
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genl_info {int attrs; } ;
typedef enum devlink_sb_threshold_type { ____Placeholder_devlink_sb_threshold_type } devlink_sb_threshold_type ;


 int devlink_sb_th_type_get_from_attrs (int ,int*) ;

__attribute__((used)) static int
devlink_sb_th_type_get_from_info(struct genl_info *info,
     enum devlink_sb_threshold_type *p_th_type)
{
 return devlink_sb_th_type_get_from_attrs(info->attrs, p_th_type);
}
