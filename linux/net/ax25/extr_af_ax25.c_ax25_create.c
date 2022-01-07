
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int type; int * ops; } ;
struct sock {int sk_protocol; int sk_destruct; } ;
struct net {int dummy; } ;
struct TYPE_4__ {struct sock* sk; } ;
typedef TYPE_1__ ax25_cb ;
struct TYPE_5__ {TYPE_1__* cb; } ;







 int AX25_P_TEXT ;
 int CAP_NET_RAW ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int ESOCKTNOSUPPORT ;
 int GFP_ATOMIC ;

 int SK_PROTOCOL_MAX ;



 TYPE_1__* ax25_create_cb () ;
 int ax25_free_sock ;
 int ax25_proto ;
 int ax25_proto_ops ;
 int ax25_protocol_is_registered (int const) ;
 TYPE_2__* ax25_sk (struct sock*) ;
 int capable (int ) ;
 int init_net ;
 int net_eq (struct net*,int *) ;
 struct sock* sk_alloc (struct net*,int,int ,int *,int) ;
 int sk_free (struct sock*) ;
 int sock_init_data (struct socket*,struct sock*) ;

__attribute__((used)) static int ax25_create(struct net *net, struct socket *sock, int protocol,
         int kern)
{
 struct sock *sk;
 ax25_cb *ax25;

 if (protocol < 0 || protocol > SK_PROTOCOL_MAX)
  return -EINVAL;

 if (!net_eq(net, &init_net))
  return -EAFNOSUPPORT;

 switch (sock->type) {
 case 130:
  if (protocol == 0 || protocol == 131)
   protocol = AX25_P_TEXT;
  break;

 case 128:
  switch (protocol) {
  case 0:
  case 131:
   protocol = AX25_P_TEXT;
   break;
  case 132:
   return -ESOCKTNOSUPPORT;
  default:
   break;
  }
  break;

 case 129:
  if (!capable(CAP_NET_RAW))
   return -EPERM;
  break;
 default:
  return -ESOCKTNOSUPPORT;
 }

 sk = sk_alloc(net, 131, GFP_ATOMIC, &ax25_proto, kern);
 if (sk == ((void*)0))
  return -ENOMEM;

 ax25 = ax25_sk(sk)->cb = ax25_create_cb();
 if (!ax25) {
  sk_free(sk);
  return -ENOMEM;
 }

 sock_init_data(sock, sk);

 sk->sk_destruct = ax25_free_sock;
 sock->ops = &ax25_proto_ops;
 sk->sk_protocol = protocol;

 ax25->sk = sk;

 return 0;
}
