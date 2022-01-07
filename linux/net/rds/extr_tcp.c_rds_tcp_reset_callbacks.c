
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int sk; } ;
struct rds_tcp_connection {int t_tinc_hdr_rem; scalar_t__ t_tinc_data_rem; TYPE_1__* t_tinc; struct socket* t_sock; } ;
struct rds_header {int dummy; } ;
struct rds_conn_path {int cp_recv_w; int cp_send_w; int cp_flags; int cp_waitq; int cp_state; struct rds_tcp_connection* cp_transport_data; } ;
struct TYPE_2__ {int ti_inc; } ;


 int RDS_CONN_RESETTING ;
 int RDS_IN_XMIT ;
 int atomic_set (int *,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int lock_sock (int ) ;
 int rds_inc_put (int *) ;
 int rds_send_path_reset (struct rds_conn_path*) ;
 int rds_tcp_restore_callbacks (struct socket*,struct rds_tcp_connection*) ;
 int rds_tcp_set_callbacks (struct socket*,struct rds_conn_path*) ;
 int release_sock (int ) ;
 int sock_release (struct socket*) ;
 int test_bit (int ,int *) ;
 int wait_event (int ,int) ;

void rds_tcp_reset_callbacks(struct socket *sock,
        struct rds_conn_path *cp)
{
 struct rds_tcp_connection *tc = cp->cp_transport_data;
 struct socket *osock = tc->t_sock;

 if (!osock)
  goto newsock;
 atomic_set(&cp->cp_state, RDS_CONN_RESETTING);
 wait_event(cp->cp_waitq, !test_bit(RDS_IN_XMIT, &cp->cp_flags));
 lock_sock(osock->sk);

 cancel_delayed_work_sync(&cp->cp_send_w);
 cancel_delayed_work_sync(&cp->cp_recv_w);
 if (tc->t_tinc) {
  rds_inc_put(&tc->t_tinc->ti_inc);
  tc->t_tinc = ((void*)0);
 }
 tc->t_tinc_hdr_rem = sizeof(struct rds_header);
 tc->t_tinc_data_rem = 0;
 rds_tcp_restore_callbacks(osock, tc);
 release_sock(osock->sk);
 sock_release(osock);
newsock:
 rds_send_path_reset(cp);
 lock_sock(sock->sk);
 rds_tcp_set_callbacks(sock, cp);
 release_sock(sock->sk);
}
