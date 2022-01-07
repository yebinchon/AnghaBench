
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdp_sock {int map_list_lock; int map_list; int tx_completion_lock; int rx_lock; int mutex; int state; } ;
struct socket {scalar_t__ type; int * ops; int state; } ;
struct sock {int sk_destruct; int sk_family; } ;
struct TYPE_2__ {int lock; int list; } ;
struct net {TYPE_1__ xdp; int user_ns; } ;


 int CAP_NET_RAW ;
 int ENOBUFS ;
 int EPERM ;
 int EPROTONOSUPPORT ;
 int ESOCKTNOSUPPORT ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PF_XDP ;
 scalar_t__ SOCK_RAW ;
 int SOCK_RCU_FREE ;
 int SS_UNCONNECTED ;
 int XSK_READY ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ns_capable (int ,int ) ;
 int sk_add_node_rcu (struct sock*,int *) ;
 struct sock* sk_alloc (struct net*,int ,int ,int *,int) ;
 int sk_refcnt_debug_inc (struct sock*) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int sock_prot_inuse_add (struct net*,int *,int) ;
 int sock_set_flag (struct sock*,int ) ;
 int spin_lock_init (int *) ;
 struct xdp_sock* xdp_sk (struct sock*) ;
 int xsk_destruct ;
 int xsk_proto ;
 int xsk_proto_ops ;

__attribute__((used)) static int xsk_create(struct net *net, struct socket *sock, int protocol,
        int kern)
{
 struct sock *sk;
 struct xdp_sock *xs;

 if (!ns_capable(net->user_ns, CAP_NET_RAW))
  return -EPERM;
 if (sock->type != SOCK_RAW)
  return -ESOCKTNOSUPPORT;

 if (protocol)
  return -EPROTONOSUPPORT;

 sock->state = SS_UNCONNECTED;

 sk = sk_alloc(net, PF_XDP, GFP_KERNEL, &xsk_proto, kern);
 if (!sk)
  return -ENOBUFS;

 sock->ops = &xsk_proto_ops;

 sock_init_data(sock, sk);

 sk->sk_family = PF_XDP;

 sk->sk_destruct = xsk_destruct;
 sk_refcnt_debug_inc(sk);

 sock_set_flag(sk, SOCK_RCU_FREE);

 xs = xdp_sk(sk);
 xs->state = XSK_READY;
 mutex_init(&xs->mutex);
 spin_lock_init(&xs->rx_lock);
 spin_lock_init(&xs->tx_completion_lock);

 INIT_LIST_HEAD(&xs->map_list);
 spin_lock_init(&xs->map_list_lock);

 mutex_lock(&net->xdp.lock);
 sk_add_node_rcu(sk, &net->xdp.list);
 mutex_unlock(&net->xdp.lock);

 local_bh_disable();
 sock_prot_inuse_add(net, &xsk_proto, 1);
 local_bh_enable();

 return 0;
}
