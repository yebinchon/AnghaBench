
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct genl_info {int * attrs; } ;
typedef enum devlink_trap_action { ____Placeholder_devlink_trap_action } devlink_trap_action ;


 size_t DEVLINK_ATTR_TRAP_ACTION ;


 int EINVAL ;
 int nla_get_u8 (int ) ;

__attribute__((used)) static int
devlink_trap_action_get_from_info(struct genl_info *info,
      enum devlink_trap_action *p_trap_action)
{
 u8 val;

 val = nla_get_u8(info->attrs[DEVLINK_ATTR_TRAP_ACTION]);
 switch (val) {
 case 129:
 case 128:
  *p_trap_action = val;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
