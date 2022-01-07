
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_10__ {int h_flags; } ;
struct TYPE_9__ {TYPE_4__ i_hdr; struct rds_conn_path* i_conn_path; TYPE_6__* i_conn; } ;
struct TYPE_7__ {int op_active; } ;
struct rds_message {TYPE_3__ m_inc; int m_flags; int m_conn_item; TYPE_1__ data; int m_daddr; } ;
struct rds_conn_path {int cp_send_w; TYPE_6__* cp_conn; int cp_lock; int cp_next_tx_seq; int cp_send_queue; } ;
typedef int npaths ;
typedef int __be16 ;
struct TYPE_11__ {int c_my_gen_num; TYPE_2__* c_trans; int c_fcong; int c_faddr; } ;
struct TYPE_8__ {scalar_t__ t_mp_capable; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int RDS_EXTHDR_GEN_NUM ;
 int RDS_EXTHDR_NPATHS ;
 scalar_t__ RDS_HS_PROBE (int ,int ) ;
 int RDS_MPATH_WORKERS ;
 int RDS_MSG_ON_CONN ;
 int be16_to_cpu (int ) ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 int list_add_tail (int *,int *) ;
 int queue_delayed_work (int ,int *,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rds_cong_wait (int ,int ,int,int *) ;
 int rds_conn_path_connect_if_down (struct rds_conn_path*) ;
 int rds_destroy_pending (TYPE_6__*) ;
 int rds_message_add_extension (TYPE_4__*,int ,int *,int) ;
 int rds_message_addref (struct rds_message*) ;
 struct rds_message* rds_message_alloc (int ,int ) ;
 int rds_message_populate_header (TYPE_4__*,int ,int ,int ) ;
 int rds_message_put (struct rds_message*) ;
 int rds_stats_inc (int ) ;
 int rds_wq ;
 int s_send_pong ;
 int s_send_queued ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
rds_send_probe(struct rds_conn_path *cp, __be16 sport,
        __be16 dport, u8 h_flags)
{
 struct rds_message *rm;
 unsigned long flags;
 int ret = 0;

 rm = rds_message_alloc(0, GFP_ATOMIC);
 if (!rm) {
  ret = -ENOMEM;
  goto out;
 }

 rm->m_daddr = cp->cp_conn->c_faddr;
 rm->data.op_active = 1;

 rds_conn_path_connect_if_down(cp);

 ret = rds_cong_wait(cp->cp_conn->c_fcong, dport, 1, ((void*)0));
 if (ret)
  goto out;

 spin_lock_irqsave(&cp->cp_lock, flags);
 list_add_tail(&rm->m_conn_item, &cp->cp_send_queue);
 set_bit(RDS_MSG_ON_CONN, &rm->m_flags);
 rds_message_addref(rm);
 rm->m_inc.i_conn = cp->cp_conn;
 rm->m_inc.i_conn_path = cp;

 rds_message_populate_header(&rm->m_inc.i_hdr, sport, dport,
        cp->cp_next_tx_seq);
 rm->m_inc.i_hdr.h_flags |= h_flags;
 cp->cp_next_tx_seq++;

 if (RDS_HS_PROBE(be16_to_cpu(sport), be16_to_cpu(dport)) &&
     cp->cp_conn->c_trans->t_mp_capable) {
  u16 npaths = cpu_to_be16(RDS_MPATH_WORKERS);
  u32 my_gen_num = cpu_to_be32(cp->cp_conn->c_my_gen_num);

  rds_message_add_extension(&rm->m_inc.i_hdr,
       RDS_EXTHDR_NPATHS, &npaths,
       sizeof(npaths));
  rds_message_add_extension(&rm->m_inc.i_hdr,
       RDS_EXTHDR_GEN_NUM,
       &my_gen_num,
       sizeof(u32));
 }
 spin_unlock_irqrestore(&cp->cp_lock, flags);

 rds_stats_inc(s_send_queued);
 rds_stats_inc(s_send_pong);


 rcu_read_lock();
 if (!rds_destroy_pending(cp->cp_conn))
  queue_delayed_work(rds_wq, &cp->cp_send_w, 1);
 rcu_read_unlock();

 rds_message_put(rm);
 return 0;

out:
 if (rm)
  rds_message_put(rm);
 return ret;
}
