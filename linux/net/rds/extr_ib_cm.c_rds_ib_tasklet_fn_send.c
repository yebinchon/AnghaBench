
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_connection {struct rds_connection* conn; int i_send_wc; int i_send_cq; int i_cq_quiesce; } ;
struct rds_connection {int * c_path; int c_map_queued; int c_flags; } ;


 int IB_CQ_NEXT_COMP ;
 int RDS_LL_SEND_FULL ;
 scalar_t__ atomic_read (int *) ;
 int ib_req_notify_cq (int ,int ) ;
 int poll_scq (struct rds_ib_connection*,int ,int ) ;
 scalar_t__ rds_conn_up (struct rds_connection*) ;
 int rds_ib_stats_inc (int ) ;
 int rds_send_xmit (int *) ;
 int s_ib_tasklet_call ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rds_ib_tasklet_fn_send(unsigned long data)
{
 struct rds_ib_connection *ic = (struct rds_ib_connection *)data;
 struct rds_connection *conn = ic->conn;

 rds_ib_stats_inc(s_ib_tasklet_call);


 if (atomic_read(&ic->i_cq_quiesce))
  return;

 poll_scq(ic, ic->i_send_cq, ic->i_send_wc);
 ib_req_notify_cq(ic->i_send_cq, IB_CQ_NEXT_COMP);
 poll_scq(ic, ic->i_send_cq, ic->i_send_wc);

 if (rds_conn_up(conn) &&
     (!test_bit(RDS_LL_SEND_FULL, &conn->c_flags) ||
     test_bit(0, &conn->c_map_queued)))
  rds_send_xmit(&ic->conn->c_path[0]);
}
