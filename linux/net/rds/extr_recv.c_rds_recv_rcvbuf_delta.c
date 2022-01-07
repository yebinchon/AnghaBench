
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct rds_sock {int rs_rcv_bytes; int rs_congested; int rs_bound_port; int rs_bound_addr; TYPE_1__* rs_transport; } ;
struct rds_cong_map {int dummy; } ;
typedef int __be16 ;
struct TYPE_2__ {scalar_t__ t_type; } ;


 scalar_t__ RDS_TRANS_LOOP ;
 int ntohs (int ) ;
 int rds_cong_clear_bit (struct rds_cong_map*,int ) ;
 int rds_cong_queue_updates (struct rds_cong_map*) ;
 int rds_cong_set_bit (struct rds_cong_map*,int ) ;
 int rds_sk_rcvbuf (struct rds_sock*) ;
 int rds_stats_add (int ,int) ;
 int rdsdebug (char*,struct rds_sock*,int *,int ,int,int,int,int) ;
 int s_recv_bytes_added_to_socket ;
 int s_recv_bytes_removed_from_socket ;

__attribute__((used)) static void rds_recv_rcvbuf_delta(struct rds_sock *rs, struct sock *sk,
      struct rds_cong_map *map,
      int delta, __be16 port)
{
 int now_congested;

 if (delta == 0)
  return;

 rs->rs_rcv_bytes += delta;
 if (delta > 0)
  rds_stats_add(s_recv_bytes_added_to_socket, delta);
 else
  rds_stats_add(s_recv_bytes_removed_from_socket, -delta);


 if (rs->rs_transport->t_type == RDS_TRANS_LOOP)
  return;

 now_congested = rs->rs_rcv_bytes > rds_sk_rcvbuf(rs);

 rdsdebug("rs %p (%pI6c:%u) recv bytes %d buf %d "
   "now_cong %d delta %d\n",
   rs, &rs->rs_bound_addr,
   ntohs(rs->rs_bound_port), rs->rs_rcv_bytes,
   rds_sk_rcvbuf(rs), now_congested, delta);


 if (!rs->rs_congested && now_congested) {
  rs->rs_congested = 1;
  rds_cong_set_bit(map, port);
  rds_cong_queue_updates(map);
 }



 else if (rs->rs_congested && (rs->rs_rcv_bytes < (rds_sk_rcvbuf(rs)/2))) {
  rs->rs_congested = 0;
  rds_cong_clear_bit(map, port);
  rds_cong_queue_updates(map);
 }


}
