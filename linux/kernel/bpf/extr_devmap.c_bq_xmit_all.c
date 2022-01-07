
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct xdp_frame {int dummy; } ;
struct xdp_bulk_queue {int count; struct xdp_frame** q; int flush_node; int * dev_rx; struct bpf_dtab_netdev* obj; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct bpf_dtab_netdev {int idx; TYPE_2__* dtab; struct net_device* dev; } ;
struct TYPE_4__ {int map; } ;
struct TYPE_3__ {int (* ndo_xdp_xmit ) (struct net_device*,int,struct xdp_frame**,int ) ;} ;


 int __list_del_clearprev (int *) ;
 scalar_t__ likely (int) ;
 int prefetch (struct xdp_frame*) ;
 int stub1 (struct net_device*,int,struct xdp_frame**,int ) ;
 int trace_xdp_devmap_xmit (int *,int ,int,int,int *,struct net_device*,int) ;
 scalar_t__ unlikely (int) ;
 int xdp_return_frame (struct xdp_frame*) ;
 int xdp_return_frame_rx_napi (struct xdp_frame*) ;

__attribute__((used)) static int bq_xmit_all(struct xdp_bulk_queue *bq, u32 flags,
         bool in_napi_ctx)
{
 struct bpf_dtab_netdev *obj = bq->obj;
 struct net_device *dev = obj->dev;
 int sent = 0, drops = 0, err = 0;
 int i;

 if (unlikely(!bq->count))
  return 0;

 for (i = 0; i < bq->count; i++) {
  struct xdp_frame *xdpf = bq->q[i];

  prefetch(xdpf);
 }

 sent = dev->netdev_ops->ndo_xdp_xmit(dev, bq->count, bq->q, flags);
 if (sent < 0) {
  err = sent;
  sent = 0;
  goto error;
 }
 drops = bq->count - sent;
out:
 bq->count = 0;

 trace_xdp_devmap_xmit(&obj->dtab->map, obj->idx,
         sent, drops, bq->dev_rx, dev, err);
 bq->dev_rx = ((void*)0);
 __list_del_clearprev(&bq->flush_node);
 return 0;
error:



 for (i = 0; i < bq->count; i++) {
  struct xdp_frame *xdpf = bq->q[i];


  if (likely(in_napi_ctx))
   xdp_return_frame_rx_napi(xdpf);
  else
   xdp_return_frame(xdpf);
  drops++;
 }
 goto out;
}
