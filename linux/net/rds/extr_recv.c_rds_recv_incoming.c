
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sock {int dummy; } ;
struct rds_sock {int rs_recv_lock; int rs_recv_queue; } ;
struct TYPE_7__ {int rx_tstamp; } ;
struct TYPE_9__ {scalar_t__ h_sport; scalar_t__ h_dport; int h_flags; int h_len; int h_sequence; } ;
struct rds_incoming {int i_item; int * i_rx_lat_trace; TYPE_2__ i_usercopy; TYPE_4__ i_hdr; struct rds_connection* i_conn; int i_rx_jiffies; struct rds_conn_path* i_conn_path; } ;
struct rds_connection {int c_lcong; int c_bound_if; struct rds_conn_path* c_path; TYPE_1__* c_trans; } ;
struct rds_conn_path {scalar_t__ cp_next_rx_seq; TYPE_3__* cp_conn; } ;
struct in6_addr {int dummy; } ;
typedef int gfp_t ;
struct TYPE_8__ {int c_hs_waitq; } ;
struct TYPE_6__ {scalar_t__ t_mp_capable; } ;


 scalar_t__ RDS_FLAG_PROBE_PORT ;
 int RDS_FLAG_RETRANSMITTED ;
 scalar_t__ RDS_HS_PROBE (scalar_t__,scalar_t__) ;
 size_t RDS_MSG_RX_END ;
 int SOCK_DEAD ;
 int SOCK_RCVTSTAMP ;
 int __rds_wake_sk_sleep (struct sock*) ;
 scalar_t__ be16_to_cpu (scalar_t__) ;
 int be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int jiffies ;
 int ktime_get_real () ;
 int list_add_tail (int *,int *) ;
 int local_clock () ;
 struct rds_sock* rds_find_bound (struct in6_addr*,scalar_t__,int ) ;
 int rds_inc_addref (struct rds_incoming*) ;
 int rds_recv_hs_exthdrs (TYPE_4__*,TYPE_3__*) ;
 int rds_recv_incoming_exthdrs (struct rds_incoming*,struct rds_sock*) ;
 int rds_recv_rcvbuf_delta (struct rds_sock*,struct sock*,int ,int ,scalar_t__) ;
 struct sock* rds_rs_to_sk (struct rds_sock*) ;
 int rds_send_pong (struct rds_conn_path*,scalar_t__) ;
 int rds_sock_put (struct rds_sock*) ;
 int rds_start_mprds (TYPE_3__*) ;
 int rds_stats_inc (int ) ;
 scalar_t__ rds_sysctl_ping_enable ;
 int rdsdebug (char*,...) ;
 int s_recv_drop_dead_sock ;
 int s_recv_drop_no_sock ;
 int s_recv_drop_old_seq ;
 int s_recv_ping ;
 int s_recv_queued ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int wake_up (int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void rds_recv_incoming(struct rds_connection *conn, struct in6_addr *saddr,
         struct in6_addr *daddr,
         struct rds_incoming *inc, gfp_t gfp)
{
 struct rds_sock *rs = ((void*)0);
 struct sock *sk;
 unsigned long flags;
 struct rds_conn_path *cp;

 inc->i_conn = conn;
 inc->i_rx_jiffies = jiffies;
 if (conn->c_trans->t_mp_capable)
  cp = inc->i_conn_path;
 else
  cp = &conn->c_path[0];

 rdsdebug("conn %p next %llu inc %p seq %llu len %u sport %u dport %u "
   "flags 0x%x rx_jiffies %lu\n", conn,
   (unsigned long long)cp->cp_next_rx_seq,
   inc,
   (unsigned long long)be64_to_cpu(inc->i_hdr.h_sequence),
   be32_to_cpu(inc->i_hdr.h_len),
   be16_to_cpu(inc->i_hdr.h_sport),
   be16_to_cpu(inc->i_hdr.h_dport),
   inc->i_hdr.h_flags,
   inc->i_rx_jiffies);
 if (be64_to_cpu(inc->i_hdr.h_sequence) < cp->cp_next_rx_seq &&
     (inc->i_hdr.h_flags & RDS_FLAG_RETRANSMITTED)) {
  rds_stats_inc(s_recv_drop_old_seq);
  goto out;
 }
 cp->cp_next_rx_seq = be64_to_cpu(inc->i_hdr.h_sequence) + 1;

 if (rds_sysctl_ping_enable && inc->i_hdr.h_dport == 0) {
  if (inc->i_hdr.h_sport == 0) {
   rdsdebug("ignore ping with 0 sport from %pI6c\n",
     saddr);
   goto out;
  }
  rds_stats_inc(s_recv_ping);
  rds_send_pong(cp, inc->i_hdr.h_sport);

  if (RDS_HS_PROBE(be16_to_cpu(inc->i_hdr.h_sport),
     be16_to_cpu(inc->i_hdr.h_dport))) {
   rds_recv_hs_exthdrs(&inc->i_hdr, cp->cp_conn);
   rds_start_mprds(cp->cp_conn);
  }
  goto out;
 }

 if (be16_to_cpu(inc->i_hdr.h_dport) == RDS_FLAG_PROBE_PORT &&
     inc->i_hdr.h_sport == 0) {
  rds_recv_hs_exthdrs(&inc->i_hdr, cp->cp_conn);

  rds_start_mprds(cp->cp_conn);
  wake_up(&cp->cp_conn->c_hs_waitq);
  goto out;
 }

 rs = rds_find_bound(daddr, inc->i_hdr.h_dport, conn->c_bound_if);
 if (!rs) {
  rds_stats_inc(s_recv_drop_no_sock);
  goto out;
 }


 rds_recv_incoming_exthdrs(inc, rs);


 sk = rds_rs_to_sk(rs);


 write_lock_irqsave(&rs->rs_recv_lock, flags);
 if (!sock_flag(sk, SOCK_DEAD)) {
  rdsdebug("adding inc %p to rs %p's recv queue\n", inc, rs);
  rds_stats_inc(s_recv_queued);
  rds_recv_rcvbuf_delta(rs, sk, inc->i_conn->c_lcong,
          be32_to_cpu(inc->i_hdr.h_len),
          inc->i_hdr.h_dport);
  if (sock_flag(sk, SOCK_RCVTSTAMP))
   inc->i_usercopy.rx_tstamp = ktime_get_real();
  rds_inc_addref(inc);
  inc->i_rx_lat_trace[RDS_MSG_RX_END] = local_clock();
  list_add_tail(&inc->i_item, &rs->rs_recv_queue);
  __rds_wake_sk_sleep(sk);
 } else {
  rds_stats_inc(s_recv_drop_dead_sock);
 }
 write_unlock_irqrestore(&rs->rs_recv_lock, flags);

out:
 if (rs)
  rds_sock_put(rs);
}
