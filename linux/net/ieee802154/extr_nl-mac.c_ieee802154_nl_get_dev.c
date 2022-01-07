
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ type; } ;
struct genl_info {scalar_t__* attrs; } ;
typedef int name ;


 scalar_t__ ARPHRD_IEEE802154 ;
 size_t IEEE802154_ATTR_DEV_INDEX ;
 size_t IEEE802154_ATTR_DEV_NAME ;
 int IFNAMSIZ ;
 struct net_device* dev_get_by_index (int *,int ) ;
 struct net_device* dev_get_by_name (int *,char*) ;
 int dev_put (struct net_device*) ;
 int init_net ;
 int nla_get_u32 (scalar_t__) ;
 int nla_strlcpy (char*,scalar_t__,int) ;

__attribute__((used)) static struct net_device *ieee802154_nl_get_dev(struct genl_info *info)
{
 struct net_device *dev;

 if (info->attrs[IEEE802154_ATTR_DEV_NAME]) {
  char name[IFNAMSIZ + 1];

  nla_strlcpy(name, info->attrs[IEEE802154_ATTR_DEV_NAME],
       sizeof(name));
  dev = dev_get_by_name(&init_net, name);
 } else if (info->attrs[IEEE802154_ATTR_DEV_INDEX]) {
  dev = dev_get_by_index(&init_net,
   nla_get_u32(info->attrs[IEEE802154_ATTR_DEV_INDEX]));
 } else {
  return ((void*)0);
 }

 if (!dev)
  return ((void*)0);

 if (dev->type != ARPHRD_IEEE802154) {
  dev_put(dev);
  return ((void*)0);
 }

 return dev;
}
