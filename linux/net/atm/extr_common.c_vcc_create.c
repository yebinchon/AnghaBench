
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {scalar_t__ type; int * sk; } ;
struct sockaddr_atmsvc {int dummy; } ;
struct sock {int sk_destruct; int sk_rmem_alloc; int sk_wmem_alloc; int sk_write_space; int sk_state_change; } ;
struct net {int dummy; } ;
struct TYPE_3__ {int max_sdu; } ;
struct TYPE_4__ {TYPE_1__ txtp; } ;
struct atm_vcc {scalar_t__ aal_options; scalar_t__ atm_options; scalar_t__ vci; scalar_t__ vpi; int * release_cb; int * push_oam; int * owner; int * pop; int * push; TYPE_2__ qos; int remote; int local; int * dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ SOCK_STREAM ;
 struct atm_vcc* atm_sk (struct sock*) ;
 int atomic_set (int *,int ) ;
 int memset (int *,int ,int) ;
 int refcount_set (int *,int) ;
 struct sock* sk_alloc (struct net*,int,int ,int *,int) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int vcc_def_wakeup ;
 int vcc_proto ;
 int vcc_sock_destruct ;
 int vcc_write_space ;

int vcc_create(struct net *net, struct socket *sock, int protocol, int family, int kern)
{
 struct sock *sk;
 struct atm_vcc *vcc;

 sock->sk = ((void*)0);
 if (sock->type == SOCK_STREAM)
  return -EINVAL;
 sk = sk_alloc(net, family, GFP_KERNEL, &vcc_proto, kern);
 if (!sk)
  return -ENOMEM;
 sock_init_data(sock, sk);
 sk->sk_state_change = vcc_def_wakeup;
 sk->sk_write_space = vcc_write_space;

 vcc = atm_sk(sk);
 vcc->dev = ((void*)0);
 memset(&vcc->local, 0, sizeof(struct sockaddr_atmsvc));
 memset(&vcc->remote, 0, sizeof(struct sockaddr_atmsvc));
 vcc->qos.txtp.max_sdu = 1 << 16;
 refcount_set(&sk->sk_wmem_alloc, 1);
 atomic_set(&sk->sk_rmem_alloc, 0);
 vcc->push = ((void*)0);
 vcc->pop = ((void*)0);
 vcc->owner = ((void*)0);
 vcc->push_oam = ((void*)0);
 vcc->release_cb = ((void*)0);
 vcc->vpi = vcc->vci = 0;
 vcc->atm_options = vcc->aal_options = 0;
 sk->sk_destruct = vcc_sock_destruct;
 return 0;
}
