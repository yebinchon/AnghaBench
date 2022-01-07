
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct genl_info {int extack; int * attrs; struct devlink_sb** user_ptr; } ;
struct devlink_sb {int index; } ;
struct devlink {int index; } ;
typedef enum devlink_sb_threshold_type { ____Placeholder_devlink_sb_threshold_type } devlink_sb_threshold_type ;


 size_t DEVLINK_ATTR_SB_POOL_SIZE ;
 int EINVAL ;
 int devlink_sb_pool_index_get_from_info (struct devlink_sb*,struct genl_info*,int *) ;
 int devlink_sb_pool_set (struct devlink_sb*,int ,int ,int ,int,int ) ;
 int devlink_sb_th_type_get_from_info (struct genl_info*,int*) ;
 int nla_get_u32 (int ) ;

__attribute__((used)) static int devlink_nl_cmd_sb_pool_set_doit(struct sk_buff *skb,
        struct genl_info *info)
{
 struct devlink *devlink = info->user_ptr[0];
 struct devlink_sb *devlink_sb = info->user_ptr[1];
 enum devlink_sb_threshold_type threshold_type;
 u16 pool_index;
 u32 size;
 int err;

 err = devlink_sb_pool_index_get_from_info(devlink_sb, info,
        &pool_index);
 if (err)
  return err;

 err = devlink_sb_th_type_get_from_info(info, &threshold_type);
 if (err)
  return err;

 if (!info->attrs[DEVLINK_ATTR_SB_POOL_SIZE])
  return -EINVAL;

 size = nla_get_u32(info->attrs[DEVLINK_ATTR_SB_POOL_SIZE]);
 return devlink_sb_pool_set(devlink, devlink_sb->index,
       pool_index, size, threshold_type,
       info->extack);
}
