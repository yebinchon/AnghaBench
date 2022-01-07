
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ type; } ;
struct ifla_vf_guid {int dummy; } ;


 scalar_t__ ARPHRD_INFINIBAND ;
 int EOPNOTSUPP ;
 int handle_infiniband_guid (struct net_device*,struct ifla_vf_guid*,int) ;

__attribute__((used)) static int handle_vf_guid(struct net_device *dev, struct ifla_vf_guid *ivt, int guid_type)
{
 if (dev->type != ARPHRD_INFINIBAND)
  return -EOPNOTSUPP;

 return handle_infiniband_guid(dev, ivt, guid_type);
}
