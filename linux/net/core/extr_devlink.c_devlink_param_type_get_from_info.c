
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genl_info {int * attrs; } ;
typedef enum devlink_param_type { ____Placeholder_devlink_param_type } devlink_param_type ;


 size_t DEVLINK_ATTR_PARAM_TYPE ;
 int DEVLINK_PARAM_TYPE_BOOL ;
 int DEVLINK_PARAM_TYPE_STRING ;
 int DEVLINK_PARAM_TYPE_U16 ;
 int DEVLINK_PARAM_TYPE_U32 ;
 int DEVLINK_PARAM_TYPE_U8 ;
 int EINVAL ;





 int nla_get_u8 (int ) ;

__attribute__((used)) static int
devlink_param_type_get_from_info(struct genl_info *info,
     enum devlink_param_type *param_type)
{
 if (!info->attrs[DEVLINK_ATTR_PARAM_TYPE])
  return -EINVAL;

 switch (nla_get_u8(info->attrs[DEVLINK_ATTR_PARAM_TYPE])) {
 case 128:
  *param_type = DEVLINK_PARAM_TYPE_U8;
  break;
 case 130:
  *param_type = DEVLINK_PARAM_TYPE_U16;
  break;
 case 129:
  *param_type = DEVLINK_PARAM_TYPE_U32;
  break;
 case 131:
  *param_type = DEVLINK_PARAM_TYPE_STRING;
  break;
 case 132:
  *param_type = DEVLINK_PARAM_TYPE_BOOL;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
