
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int sk; TYPE_1__* ops; } ;
struct rds_tcp_connection {int t_tinc_hdr_rem; scalar_t__ t_tinc_data_rem; TYPE_2__* t_tinc; struct socket* t_sock; } ;
struct rds_header {int dummy; } ;
struct rds_conn_path {int cp_conn; struct rds_tcp_connection* cp_transport_data; } ;
struct TYPE_4__ {int ti_inc; } ;
struct TYPE_3__ {int (* shutdown ) (struct socket*,int) ;} ;


 int RCV_SHUTDOWN ;
 int SEND_SHUTDOWN ;
 int lock_sock (int ) ;
 scalar_t__ rds_destroy_pending (int ) ;
 int rds_inc_put (int *) ;
 int rds_tcp_restore_callbacks (struct socket*,struct rds_tcp_connection*) ;
 int rds_tcp_set_linger (struct socket*) ;
 int rdsdebug (char*,int ,struct rds_tcp_connection*,struct socket*) ;
 int release_sock (int ) ;
 int sock_release (struct socket*) ;
 int stub1 (struct socket*,int) ;

void rds_tcp_conn_path_shutdown(struct rds_conn_path *cp)
{
 struct rds_tcp_connection *tc = cp->cp_transport_data;
 struct socket *sock = tc->t_sock;

 rdsdebug("shutting down conn %p tc %p sock %p\n",
   cp->cp_conn, tc, sock);

 if (sock) {
  if (rds_destroy_pending(cp->cp_conn))
   rds_tcp_set_linger(sock);
  sock->ops->shutdown(sock, RCV_SHUTDOWN | SEND_SHUTDOWN);
  lock_sock(sock->sk);
  rds_tcp_restore_callbacks(sock, tc);

  release_sock(sock->sk);
  sock_release(sock);
 }

 if (tc->t_tinc) {
  rds_inc_put(&tc->t_tinc->ti_inc);
  tc->t_tinc = ((void*)0);
 }
 tc->t_tinc_hdr_rem = sizeof(struct rds_header);
 tc->t_tinc_data_rem = 0;
}
