
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdp_sock {int tx; int rx; int mutex; } ;
struct socket {struct sock* sk; } ;
struct sock {int sk_prot; } ;
struct TYPE_2__ {int lock; } ;
struct net {TYPE_1__ xdp; } ;


 int local_bh_disable () ;
 int local_bh_enable () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sk_del_node_init_rcu (struct sock*) ;
 int sk_refcnt_debug_release (struct sock*) ;
 struct net* sock_net (struct sock*) ;
 int sock_orphan (struct sock*) ;
 int sock_prot_inuse_add (struct net*,int ,int) ;
 int sock_put (struct sock*) ;
 struct xdp_sock* xdp_sk (struct sock*) ;
 int xsk_delete_from_maps (struct xdp_sock*) ;
 int xsk_unbind_dev (struct xdp_sock*) ;
 int xskq_destroy (int ) ;

__attribute__((used)) static int xsk_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct xdp_sock *xs = xdp_sk(sk);
 struct net *net;

 if (!sk)
  return 0;

 net = sock_net(sk);

 mutex_lock(&net->xdp.lock);
 sk_del_node_init_rcu(sk);
 mutex_unlock(&net->xdp.lock);

 local_bh_disable();
 sock_prot_inuse_add(net, sk->sk_prot, -1);
 local_bh_enable();

 xsk_delete_from_maps(xs);
 mutex_lock(&xs->mutex);
 xsk_unbind_dev(xs);
 mutex_unlock(&xs->mutex);

 xskq_destroy(xs->rx);
 xskq_destroy(xs->tx);

 sock_orphan(sk);
 sock->sk = ((void*)0);

 sk_refcnt_debug_release(sk);
 sock_put(sk);

 return 0;
}
