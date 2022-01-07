
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdev_bpf {int command; struct bpf_offloaded_map* offmap; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct bpf_offloaded_map {struct net_device* netdev; } ;
typedef enum bpf_netdev_command { ____Placeholder_bpf_netdev_command } bpf_netdev_command ;
struct TYPE_2__ {int (* ndo_bpf ) (struct net_device*,struct netdev_bpf*) ;} ;


 int ASSERT_RTNL () ;
 int stub1 (struct net_device*,struct netdev_bpf*) ;

__attribute__((used)) static int bpf_map_offload_ndo(struct bpf_offloaded_map *offmap,
          enum bpf_netdev_command cmd)
{
 struct netdev_bpf data = {};
 struct net_device *netdev;

 ASSERT_RTNL();

 data.command = cmd;
 data.offmap = offmap;

 netdev = offmap->netdev;

 return netdev->netdev_ops->ndo_bpf(netdev, &data);
}
