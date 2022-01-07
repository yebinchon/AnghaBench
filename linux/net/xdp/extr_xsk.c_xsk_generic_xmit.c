
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct xdp_sock {scalar_t__ queue_id; int mutex; int tx; TYPE_1__* dev; TYPE_2__* umem; } ;
struct xdp_desc {scalar_t__ addr; int len; } ;
struct sock {int (* sk_write_space ) (struct sock*) ;int sk_mark; int sk_priority; } ;
struct sk_buff {int destructor; int mark; int priority; TYPE_1__* dev; } ;
struct TYPE_7__ {void* destructor_arg; } ;
struct TYPE_6__ {int cq; } ;
struct TYPE_5__ {scalar_t__ real_num_tx_queues; } ;


 int EAGAIN ;
 int EBUSY ;
 int NETDEV_TX_BUSY ;
 int NET_XMIT_DROP ;
 int TX_BATCH_SIZE ;
 int dev_direct_xmit (struct sk_buff*,scalar_t__) ;
 int kfree_skb (struct sk_buff*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skb_put (struct sk_buff*,int ) ;
 TYPE_4__* skb_shinfo (struct sk_buff*) ;
 int skb_store_bits (struct sk_buff*,int ,char*,int ) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,int ,int,int*) ;
 int stub1 (struct sock*) ;
 scalar_t__ unlikely (int) ;
 struct xdp_sock* xdp_sk (struct sock*) ;
 char* xdp_umem_get_data (TYPE_2__*,scalar_t__) ;
 int xsk_destruct_skb ;
 int xskq_discard_desc (int ) ;
 scalar_t__ xskq_peek_desc (int ,struct xdp_desc*,TYPE_2__*) ;
 scalar_t__ xskq_reserve_addr (int ) ;

__attribute__((used)) static int xsk_generic_xmit(struct sock *sk)
{
 struct xdp_sock *xs = xdp_sk(sk);
 u32 max_batch = TX_BATCH_SIZE;
 bool sent_frame = 0;
 struct xdp_desc desc;
 struct sk_buff *skb;
 int err = 0;

 mutex_lock(&xs->mutex);

 if (xs->queue_id >= xs->dev->real_num_tx_queues)
  goto out;

 while (xskq_peek_desc(xs->tx, &desc, xs->umem)) {
  char *buffer;
  u64 addr;
  u32 len;

  if (max_batch-- == 0) {
   err = -EAGAIN;
   goto out;
  }

  len = desc.len;
  skb = sock_alloc_send_skb(sk, len, 1, &err);
  if (unlikely(!skb)) {
   err = -EAGAIN;
   goto out;
  }

  skb_put(skb, len);
  addr = desc.addr;
  buffer = xdp_umem_get_data(xs->umem, addr);
  err = skb_store_bits(skb, 0, buffer, len);
  if (unlikely(err) || xskq_reserve_addr(xs->umem->cq)) {
   kfree_skb(skb);
   goto out;
  }

  skb->dev = xs->dev;
  skb->priority = sk->sk_priority;
  skb->mark = sk->sk_mark;
  skb_shinfo(skb)->destructor_arg = (void *)(long)desc.addr;
  skb->destructor = xsk_destruct_skb;

  err = dev_direct_xmit(skb, xs->queue_id);
  xskq_discard_desc(xs->tx);

  if (err == NET_XMIT_DROP || err == NETDEV_TX_BUSY) {

   err = -EBUSY;
   goto out;
  }

  sent_frame = 1;
 }

out:
 if (sent_frame)
  sk->sk_write_space(sk);

 mutex_unlock(&xs->mutex);
 return err;
}
