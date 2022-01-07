
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; int * ops; } ;
struct sock {int dummy; } ;
struct net {int dummy; } ;


 int CAP_NET_RAW ;
 int EAFNOSUPPORT ;
 int ENOMEM ;
 int EPERM ;
 int ESOCKTNOSUPPORT ;
 int GFP_KERNEL ;
 int PF_APPLETALK ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_RAW ;
 int SOCK_ZAPPED ;
 int atalk_dgram_ops ;
 int capable (int ) ;
 int ddp_proto ;
 int init_net ;
 int net_eq (struct net*,int *) ;
 struct sock* sk_alloc (struct net*,int ,int ,int *,int) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;

__attribute__((used)) static int atalk_create(struct net *net, struct socket *sock, int protocol,
   int kern)
{
 struct sock *sk;
 int rc = -ESOCKTNOSUPPORT;

 if (!net_eq(net, &init_net))
  return -EAFNOSUPPORT;





 if (sock->type != SOCK_RAW && sock->type != SOCK_DGRAM)
  goto out;

 rc = -EPERM;
 if (sock->type == SOCK_RAW && !kern && !capable(CAP_NET_RAW))
  goto out;

 rc = -ENOMEM;
 sk = sk_alloc(net, PF_APPLETALK, GFP_KERNEL, &ddp_proto, kern);
 if (!sk)
  goto out;
 rc = 0;
 sock->ops = &atalk_dgram_ops;
 sock_init_data(sock, sk);


 sock_set_flag(sk, SOCK_ZAPPED);
out:
 return rc;
}
