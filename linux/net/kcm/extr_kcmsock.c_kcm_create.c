
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int type; int * ops; } ;
struct sock {int dummy; } ;
struct net {int dummy; } ;
struct kcm_net {int mutex; int count; int mux_list; } ;
struct kcm_mux {int rx_hold_queue; int kcm_mux_list; struct kcm_net* knet; int psocks_avail; int psocks_ready; int psocks; int kcm_tx_waiters; int kcm_rx_waiters; int kcm_socks; int rx_lock; int lock; } ;


 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int ESOCKTNOSUPPORT ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KCMPROTO_CONNECTED ;
 int PF_KCM ;


 int init_kcm_sock (int ,struct kcm_mux*) ;
 int kcm_dgram_ops ;
 int kcm_muxp ;
 int kcm_net_id ;
 int kcm_proto ;
 int kcm_seqpacket_ops ;
 int kcm_sk (struct sock*) ;
 struct kcm_mux* kmem_cache_zalloc (int ,int ) ;
 int list_add_rcu (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct kcm_net* net_generic (struct net*,int ) ;
 struct sock* sk_alloc (struct net*,int ,int ,int *,int) ;
 int sk_free (struct sock*) ;
 int skb_queue_head_init (int *) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int kcm_create(struct net *net, struct socket *sock,
        int protocol, int kern)
{
 struct kcm_net *knet = net_generic(net, kcm_net_id);
 struct sock *sk;
 struct kcm_mux *mux;

 switch (sock->type) {
 case 129:
  sock->ops = &kcm_dgram_ops;
  break;
 case 128:
  sock->ops = &kcm_seqpacket_ops;
  break;
 default:
  return -ESOCKTNOSUPPORT;
 }

 if (protocol != KCMPROTO_CONNECTED)
  return -EPROTONOSUPPORT;

 sk = sk_alloc(net, PF_KCM, GFP_KERNEL, &kcm_proto, kern);
 if (!sk)
  return -ENOMEM;


 mux = kmem_cache_zalloc(kcm_muxp, GFP_KERNEL);
 if (!mux) {
  sk_free(sk);
  return -ENOMEM;
 }

 spin_lock_init(&mux->lock);
 spin_lock_init(&mux->rx_lock);
 INIT_LIST_HEAD(&mux->kcm_socks);
 INIT_LIST_HEAD(&mux->kcm_rx_waiters);
 INIT_LIST_HEAD(&mux->kcm_tx_waiters);

 INIT_LIST_HEAD(&mux->psocks);
 INIT_LIST_HEAD(&mux->psocks_ready);
 INIT_LIST_HEAD(&mux->psocks_avail);

 mux->knet = knet;


 mutex_lock(&knet->mutex);
 list_add_rcu(&mux->kcm_mux_list, &knet->mux_list);
 knet->count++;
 mutex_unlock(&knet->mutex);

 skb_queue_head_init(&mux->rx_hold_queue);


 sock_init_data(sock, sk);
 init_kcm_sock(kcm_sk(sk), mux);

 return 0;
}
