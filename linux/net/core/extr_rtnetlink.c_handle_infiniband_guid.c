
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_ops {int (* ndo_set_vf_guid ) (struct net_device*,int ,int ,int) ;} ;
struct net_device {struct net_device_ops* netdev_ops; } ;
struct ifla_vf_guid {int guid; int vf; } ;


 int stub1 (struct net_device*,int ,int ,int) ;

__attribute__((used)) static int handle_infiniband_guid(struct net_device *dev, struct ifla_vf_guid *ivt,
      int guid_type)
{
 const struct net_device_ops *ops = dev->netdev_ops;

 return ops->ndo_set_vf_guid(dev, ivt->vf, ivt->guid, guid_type);
}
