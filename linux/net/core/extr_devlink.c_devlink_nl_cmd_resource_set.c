
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sk_buff {int dummy; } ;
struct genl_info {int extack; int * attrs; struct devlink** user_ptr; } ;
struct devlink_resource {struct devlink_resource* parent; int size_new; } ;
struct devlink {int dummy; } ;


 size_t DEVLINK_ATTR_RESOURCE_ID ;
 size_t DEVLINK_ATTR_RESOURCE_SIZE ;
 int EINVAL ;
 struct devlink_resource* devlink_resource_find (struct devlink*,int *,int ) ;
 int devlink_resource_validate_children (struct devlink_resource*) ;
 int devlink_resource_validate_size (struct devlink_resource*,int ,int ) ;
 int nla_get_u64 (int ) ;

__attribute__((used)) static int devlink_nl_cmd_resource_set(struct sk_buff *skb,
           struct genl_info *info)
{
 struct devlink *devlink = info->user_ptr[0];
 struct devlink_resource *resource;
 u64 resource_id;
 u64 size;
 int err;

 if (!info->attrs[DEVLINK_ATTR_RESOURCE_ID] ||
     !info->attrs[DEVLINK_ATTR_RESOURCE_SIZE])
  return -EINVAL;
 resource_id = nla_get_u64(info->attrs[DEVLINK_ATTR_RESOURCE_ID]);

 resource = devlink_resource_find(devlink, ((void*)0), resource_id);
 if (!resource)
  return -EINVAL;

 size = nla_get_u64(info->attrs[DEVLINK_ATTR_RESOURCE_SIZE]);
 err = devlink_resource_validate_size(resource, size, info->extack);
 if (err)
  return err;

 resource->size_new = size;
 devlink_resource_validate_children(resource);
 if (resource->parent)
  devlink_resource_validate_children(resource->parent);
 return 0;
}
