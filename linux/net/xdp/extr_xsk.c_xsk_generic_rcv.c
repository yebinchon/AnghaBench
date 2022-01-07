
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_8__ {int (* sk_data_ready ) (TYPE_5__*) ;} ;
struct xdp_sock {scalar_t__ dev; scalar_t__ queue_id; int rx_lock; int rx_dropped; TYPE_5__ sk; int rx; TYPE_2__* umem; } ;
struct xdp_buff {scalar_t__ data; scalar_t__ data_meta; scalar_t__ data_end; TYPE_1__* rxq; } ;
struct TYPE_7__ {scalar_t__ headroom; scalar_t__ chunk_size_nohr; int fq; } ;
struct TYPE_6__ {scalar_t__ dev; scalar_t__ queue_index; } ;


 int EINVAL ;
 int ENOSPC ;
 scalar_t__ XDP_PACKET_HEADROOM ;
 int memcpy (void*,scalar_t__,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (TYPE_5__*) ;
 void* xdp_umem_get_data (TYPE_2__*,scalar_t__) ;
 scalar_t__ xsk_umem_adjust_offset (TYPE_2__*,scalar_t__,scalar_t__) ;
 int xskq_discard_addr (int ) ;
 int xskq_peek_addr (int ,scalar_t__*,TYPE_2__*) ;
 int xskq_produce_batch_desc (int ,scalar_t__,scalar_t__) ;
 int xskq_produce_flush_desc (int ) ;

int xsk_generic_rcv(struct xdp_sock *xs, struct xdp_buff *xdp)
{
 u32 metalen = xdp->data - xdp->data_meta;
 u32 len = xdp->data_end - xdp->data;
 u64 offset = xs->umem->headroom;
 void *buffer;
 u64 addr;
 int err;

 spin_lock_bh(&xs->rx_lock);

 if (xs->dev != xdp->rxq->dev || xs->queue_id != xdp->rxq->queue_index) {
  err = -EINVAL;
  goto out_unlock;
 }

 if (!xskq_peek_addr(xs->umem->fq, &addr, xs->umem) ||
     len > xs->umem->chunk_size_nohr - XDP_PACKET_HEADROOM) {
  err = -ENOSPC;
  goto out_drop;
 }

 addr = xsk_umem_adjust_offset(xs->umem, addr, offset);
 buffer = xdp_umem_get_data(xs->umem, addr);
 memcpy(buffer, xdp->data_meta, len + metalen);

 addr = xsk_umem_adjust_offset(xs->umem, addr, metalen);
 err = xskq_produce_batch_desc(xs->rx, addr, len);
 if (err)
  goto out_drop;

 xskq_discard_addr(xs->umem->fq);
 xskq_produce_flush_desc(xs->rx);

 spin_unlock_bh(&xs->rx_lock);

 xs->sk.sk_data_ready(&xs->sk);
 return 0;

out_drop:
 xs->rx_dropped++;
out_unlock:
 spin_unlock_bh(&xs->rx_lock);
 return err;
}
