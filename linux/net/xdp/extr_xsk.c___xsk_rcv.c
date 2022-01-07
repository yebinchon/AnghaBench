
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct xdp_sock {int rx_dropped; TYPE_1__* umem; int rx; } ;
struct xdp_buff {void* data_meta; void* data; } ;
struct TYPE_4__ {int chunk_size_nohr; int fq; int headroom; } ;


 int ENOSPC ;
 int XDP_PACKET_HEADROOM ;
 int __xsk_rcv_memcpy (TYPE_1__*,int ,void*,int,int) ;
 scalar_t__ unlikely (int ) ;
 int xdp_data_meta_unsupported (struct xdp_buff*) ;
 int xdp_return_buff (struct xdp_buff*) ;
 int xsk_umem_adjust_offset (TYPE_1__*,int ,int ) ;
 int xskq_discard_addr (int ) ;
 int xskq_peek_addr (int ,int *,TYPE_1__*) ;
 int xskq_produce_batch_desc (int ,int ,int) ;

__attribute__((used)) static int __xsk_rcv(struct xdp_sock *xs, struct xdp_buff *xdp, u32 len)
{
 u64 offset = xs->umem->headroom;
 u64 addr, memcpy_addr;
 void *from_buf;
 u32 metalen;
 int err;

 if (!xskq_peek_addr(xs->umem->fq, &addr, xs->umem) ||
     len > xs->umem->chunk_size_nohr - XDP_PACKET_HEADROOM) {
  xs->rx_dropped++;
  return -ENOSPC;
 }

 if (unlikely(xdp_data_meta_unsupported(xdp))) {
  from_buf = xdp->data;
  metalen = 0;
 } else {
  from_buf = xdp->data_meta;
  metalen = xdp->data - xdp->data_meta;
 }

 memcpy_addr = xsk_umem_adjust_offset(xs->umem, addr, offset);
 __xsk_rcv_memcpy(xs->umem, memcpy_addr, from_buf, len, metalen);

 offset += metalen;
 addr = xsk_umem_adjust_offset(xs->umem, addr, offset);
 err = xskq_produce_batch_desc(xs->rx, addr, len);
 if (!err) {
  xskq_discard_addr(xs->umem->fq);
  xdp_return_buff(xdp);
  return 0;
 }

 xs->rx_dropped++;
 return err;
}
