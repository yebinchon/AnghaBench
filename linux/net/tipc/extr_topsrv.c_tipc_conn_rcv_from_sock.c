
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_topsrv {int dummy; } ;
struct tipc_subscr {int dummy; } ;
struct tipc_conn {TYPE_1__* sock; struct tipc_topsrv* server; } ;
struct sock {int sk_callback_lock; } ;
struct msghdr {int msg_iter; int * msg_name; } ;
struct kvec {int iov_len; struct tipc_subscr* iov_base; } ;
typedef int s ;
struct TYPE_2__ {struct sock* sk; } ;


 int EWOULDBLOCK ;
 int MSG_DONTWAIT ;
 int READ ;
 int iov_iter_kvec (int *,int ,struct kvec*,int,int) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int sock_recvmsg (TYPE_1__*,struct msghdr*,int ) ;
 int tipc_conn_close (struct tipc_conn*) ;
 int tipc_conn_rcv_sub (struct tipc_topsrv*,struct tipc_conn*,struct tipc_subscr*) ;

__attribute__((used)) static int tipc_conn_rcv_from_sock(struct tipc_conn *con)
{
 struct tipc_topsrv *srv = con->server;
 struct sock *sk = con->sock->sk;
 struct msghdr msg = {};
 struct tipc_subscr s;
 struct kvec iov;
 int ret;

 iov.iov_base = &s;
 iov.iov_len = sizeof(s);
 msg.msg_name = ((void*)0);
 iov_iter_kvec(&msg.msg_iter, READ, &iov, 1, iov.iov_len);
 ret = sock_recvmsg(con->sock, &msg, MSG_DONTWAIT);
 if (ret == -EWOULDBLOCK)
  return -EWOULDBLOCK;
 if (ret == sizeof(s)) {
  read_lock_bh(&sk->sk_callback_lock);
  ret = tipc_conn_rcv_sub(srv, con, &s);
  read_unlock_bh(&sk->sk_callback_lock);
 }
 if (ret < 0)
  tipc_conn_close(con);

 return ret;
}
