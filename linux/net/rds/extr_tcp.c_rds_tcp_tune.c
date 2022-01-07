
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_sndbuf; int sk_userlocks; } ;
struct rds_tcp_net {scalar_t__ sndbuf_size; scalar_t__ rcvbuf_size; } ;
struct net {int dummy; } ;


 int SOCK_RCVBUF_LOCK ;
 int SOCK_SNDBUF_LOCK ;
 int lock_sock (struct sock*) ;
 struct rds_tcp_net* net_generic (struct net*,int ) ;
 int rds_tcp_netid ;
 int rds_tcp_nonagle (struct socket*) ;
 int release_sock (struct sock*) ;
 struct net* sock_net (struct sock*) ;

void rds_tcp_tune(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct net *net = sock_net(sk);
 struct rds_tcp_net *rtn = net_generic(net, rds_tcp_netid);

 rds_tcp_nonagle(sock);
 lock_sock(sk);
 if (rtn->sndbuf_size > 0) {
  sk->sk_sndbuf = rtn->sndbuf_size;
  sk->sk_userlocks |= SOCK_SNDBUF_LOCK;
 }
 if (rtn->rcvbuf_size > 0) {
  sk->sk_sndbuf = rtn->rcvbuf_size;
  sk->sk_userlocks |= SOCK_RCVBUF_LOCK;
 }
 release_sock(sk);
}
