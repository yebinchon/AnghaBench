
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* netdev_ops; } ;
struct TYPE_2__ {int ndo_bpf; } ;


 int EINVAL ;
 int EOPNOTSUPP ;

__attribute__((used)) static int bpf_dev_offload_check(struct net_device *netdev)
{
 if (!netdev)
  return -EINVAL;
 if (!netdev->netdev_ops->ndo_bpf)
  return -EOPNOTSUPP;
 return 0;
}
