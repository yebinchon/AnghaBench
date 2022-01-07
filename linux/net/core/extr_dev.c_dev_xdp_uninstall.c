
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xdp ;
struct netdev_bpf {int prog_flags; scalar_t__ prog_id; int command; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
typedef int (* bpf_op_t ) (struct net_device*,struct netdev_bpf*) ;
struct TYPE_2__ {int (* ndo_bpf ) (struct net_device*,struct netdev_bpf*) ;} ;


 int WARN_ON (int ) ;
 int XDP_QUERY_PROG ;
 int XDP_QUERY_PROG_HW ;
 int dev_xdp_install (struct net_device*,int (*) (struct net_device*,struct netdev_bpf*),int *,int ,int *) ;
 int generic_xdp_install (struct net_device*,struct netdev_bpf*) ;
 int memset (struct netdev_bpf*,int ,int) ;

__attribute__((used)) static void dev_xdp_uninstall(struct net_device *dev)
{
 struct netdev_bpf xdp;
 bpf_op_t ndo_bpf;


 WARN_ON(dev_xdp_install(dev, generic_xdp_install, ((void*)0), 0, ((void*)0)));


 ndo_bpf = dev->netdev_ops->ndo_bpf;
 if (!ndo_bpf)
  return;

 memset(&xdp, 0, sizeof(xdp));
 xdp.command = XDP_QUERY_PROG;
 WARN_ON(ndo_bpf(dev, &xdp));
 if (xdp.prog_id)
  WARN_ON(dev_xdp_install(dev, ndo_bpf, ((void*)0), xdp.prog_flags,
     ((void*)0)));


 memset(&xdp, 0, sizeof(xdp));
 xdp.command = XDP_QUERY_PROG_HW;
 if (!ndo_bpf(dev, &xdp) && xdp.prog_id)
  WARN_ON(dev_xdp_install(dev, ndo_bpf, ((void*)0), xdp.prog_flags,
     ((void*)0)));
}
