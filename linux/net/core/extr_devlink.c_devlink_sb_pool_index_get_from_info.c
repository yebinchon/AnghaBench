
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct genl_info {int attrs; } ;
struct devlink_sb {int dummy; } ;


 int devlink_sb_pool_index_get_from_attrs (struct devlink_sb*,int ,int *) ;

__attribute__((used)) static int devlink_sb_pool_index_get_from_info(struct devlink_sb *devlink_sb,
            struct genl_info *info,
            u16 *p_pool_index)
{
 return devlink_sb_pool_index_get_from_attrs(devlink_sb, info->attrs,
          p_pool_index);
}
