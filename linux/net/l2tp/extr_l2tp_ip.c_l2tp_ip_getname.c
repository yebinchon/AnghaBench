
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_l2tpip {TYPE_1__ l2tp_addr; int l2tp_conn_id; int l2tp_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct l2tp_ip_sock {int conn_id; int peer_conn_id; } ;
struct inet_sock {scalar_t__ inet_saddr; scalar_t__ inet_rcv_saddr; scalar_t__ inet_daddr; int inet_dport; } ;
typedef scalar_t__ __be32 ;


 int AF_INET ;
 int ENOTCONN ;
 struct inet_sock* inet_sk (struct sock*) ;
 struct l2tp_ip_sock* l2tp_ip_sk (struct sock*) ;
 int memset (struct sockaddr_l2tpip*,int ,int) ;

__attribute__((used)) static int l2tp_ip_getname(struct socket *sock, struct sockaddr *uaddr,
      int peer)
{
 struct sock *sk = sock->sk;
 struct inet_sock *inet = inet_sk(sk);
 struct l2tp_ip_sock *lsk = l2tp_ip_sk(sk);
 struct sockaddr_l2tpip *lsa = (struct sockaddr_l2tpip *)uaddr;

 memset(lsa, 0, sizeof(*lsa));
 lsa->l2tp_family = AF_INET;
 if (peer) {
  if (!inet->inet_dport)
   return -ENOTCONN;
  lsa->l2tp_conn_id = lsk->peer_conn_id;
  lsa->l2tp_addr.s_addr = inet->inet_daddr;
 } else {
  __be32 addr = inet->inet_rcv_saddr;
  if (!addr)
   addr = inet->inet_saddr;
  lsa->l2tp_conn_id = lsk->conn_id;
  lsa->l2tp_addr.s_addr = addr;
 }
 return sizeof(*lsa);
}
