
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct devlink_resource {int occ_get_priv; int (* occ_get ) (int ) ;} ;


 int DEVLINK_ATTR_PAD ;
 int DEVLINK_ATTR_RESOURCE_OCC ;
 int nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static int devlink_resource_occ_put(struct devlink_resource *resource,
        struct sk_buff *skb)
{
 if (!resource->occ_get)
  return 0;
 return nla_put_u64_64bit(skb, DEVLINK_ATTR_RESOURCE_OCC,
     resource->occ_get(resource->occ_get_priv),
     DEVLINK_ATTR_PAD);
}
