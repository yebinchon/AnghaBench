
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;
struct rds_tcp_connection {struct socket* t_sock; } ;
struct rds_conn_path {int cp_index; struct rds_tcp_connection* cp_transport_data; } ;


 int GFP_KERNEL ;
 int lock_sock (int ) ;
 int rds_tcp_read_sock (struct rds_conn_path*,int ) ;
 int rdsdebug (char*,int ,struct rds_tcp_connection*,struct socket*) ;
 int release_sock (int ) ;

int rds_tcp_recv_path(struct rds_conn_path *cp)
{
 struct rds_tcp_connection *tc = cp->cp_transport_data;
 struct socket *sock = tc->t_sock;
 int ret = 0;

 rdsdebug("recv worker path [%d] tc %p sock %p\n",
   cp->cp_index, tc, sock);

 lock_sock(sock->sk);
 ret = rds_tcp_read_sock(cp, GFP_KERNEL);
 release_sock(sock->sk);

 return ret;
}
