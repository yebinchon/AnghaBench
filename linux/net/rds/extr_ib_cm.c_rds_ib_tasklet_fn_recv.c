
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_device {int dummy; } ;
struct rds_ib_connection {scalar_t__ i_ack_recv; int i_recv_wc; int i_recv_cq; int i_cq_quiesce; struct rds_ib_device* rds_ibdev; struct rds_connection* conn; } ;
struct rds_ib_ack_state {scalar_t__ ack_recv; scalar_t__ ack_recv_valid; int ack_required; int ack_next; scalar_t__ ack_next_valid; } ;
struct rds_connection {int dummy; } ;
typedef int state ;


 int IB_CQ_SOLICITED ;
 scalar_t__ atomic_read (int *) ;
 int ib_req_notify_cq (int ,int ) ;
 int memset (struct rds_ib_ack_state*,int ,int) ;
 int poll_rcq (struct rds_ib_connection*,int ,int ,struct rds_ib_ack_state*) ;
 int rds_conn_drop (struct rds_connection*) ;
 scalar_t__ rds_conn_up (struct rds_connection*) ;
 int rds_ib_attempt_ack (struct rds_ib_connection*) ;
 int rds_ib_set_ack (struct rds_ib_connection*,int ,int ) ;
 int rds_ib_stats_inc (int ) ;
 int rds_send_drop_acked (struct rds_connection*,scalar_t__,int *) ;
 int s_ib_tasklet_call ;

__attribute__((used)) static void rds_ib_tasklet_fn_recv(unsigned long data)
{
 struct rds_ib_connection *ic = (struct rds_ib_connection *)data;
 struct rds_connection *conn = ic->conn;
 struct rds_ib_device *rds_ibdev = ic->rds_ibdev;
 struct rds_ib_ack_state state;

 if (!rds_ibdev)
  rds_conn_drop(conn);

 rds_ib_stats_inc(s_ib_tasklet_call);


 if (atomic_read(&ic->i_cq_quiesce))
  return;

 memset(&state, 0, sizeof(state));
 poll_rcq(ic, ic->i_recv_cq, ic->i_recv_wc, &state);
 ib_req_notify_cq(ic->i_recv_cq, IB_CQ_SOLICITED);
 poll_rcq(ic, ic->i_recv_cq, ic->i_recv_wc, &state);

 if (state.ack_next_valid)
  rds_ib_set_ack(ic, state.ack_next, state.ack_required);
 if (state.ack_recv_valid && state.ack_recv > ic->i_ack_recv) {
  rds_send_drop_acked(conn, state.ack_recv, ((void*)0));
  ic->i_ack_recv = state.ack_recv;
 }

 if (rds_conn_up(conn))
  rds_ib_attempt_ack(ic);
}
