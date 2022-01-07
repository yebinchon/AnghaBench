
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; int * ops; int state; } ;
struct sock {int dummy; } ;
struct net {int dummy; } ;


 int BT_DBG (char*,struct socket*) ;
 int ENOMEM ;
 int ESOCKTNOSUPPORT ;
 int GFP_ATOMIC ;
 scalar_t__ SOCK_RAW ;
 scalar_t__ SOCK_STREAM ;
 int SS_UNCONNECTED ;
 struct sock* rfcomm_sock_alloc (struct net*,struct socket*,int,int ,int) ;
 int rfcomm_sock_init (struct sock*,int *) ;
 int rfcomm_sock_ops ;

__attribute__((used)) static int rfcomm_sock_create(struct net *net, struct socket *sock,
         int protocol, int kern)
{
 struct sock *sk;

 BT_DBG("sock %p", sock);

 sock->state = SS_UNCONNECTED;

 if (sock->type != SOCK_STREAM && sock->type != SOCK_RAW)
  return -ESOCKTNOSUPPORT;

 sock->ops = &rfcomm_sock_ops;

 sk = rfcomm_sock_alloc(net, sock, protocol, GFP_ATOMIC, kern);
 if (!sk)
  return -ENOMEM;

 rfcomm_sock_init(sk, ((void*)0));
 return 0;
}
