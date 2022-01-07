
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xdp_umem {int zc; TYPE_3__* dev; int queue_id; } ;
struct TYPE_6__ {int queue_id; int * umem; } ;
struct netdev_bpf {TYPE_1__ xsk; int command; } ;
struct TYPE_8__ {TYPE_2__* netdev_ops; } ;
struct TYPE_7__ {int (* ndo_bpf ) (TYPE_3__*,struct netdev_bpf*) ;} ;


 int ASSERT_RTNL () ;
 int WARN (int,char*) ;
 int XDP_SETUP_XSK_UMEM ;
 int dev_put (TYPE_3__*) ;
 int stub1 (TYPE_3__*,struct netdev_bpf*) ;
 int xdp_clear_umem_at_qid (TYPE_3__*,int ) ;

void xdp_umem_clear_dev(struct xdp_umem *umem)
{
 struct netdev_bpf bpf;
 int err;

 ASSERT_RTNL();

 if (!umem->dev)
  return;

 if (umem->zc) {
  bpf.command = XDP_SETUP_XSK_UMEM;
  bpf.xsk.umem = ((void*)0);
  bpf.xsk.queue_id = umem->queue_id;

  err = umem->dev->netdev_ops->ndo_bpf(umem->dev, &bpf);

  if (err)
   WARN(1, "failed to disable umem!\n");
 }

 xdp_clear_umem_at_qid(umem->dev, umem->queue_id);

 dev_put(umem->dev);
 umem->dev = ((void*)0);
 umem->zc = 0;
}
