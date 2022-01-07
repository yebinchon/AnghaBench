
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union devlink_param_value {int vbool; int vstr; int vu32; int vu16; int vu8; } ;
struct genl_info {scalar_t__* attrs; } ;
struct devlink_param {int type; } ;


 size_t DEVLINK_ATTR_PARAM_VALUE_DATA ;





 int EINVAL ;
 int __DEVLINK_PARAM_MAX_STRING_VALUE ;
 int nla_data (scalar_t__) ;
 int nla_get_u16 (scalar_t__) ;
 int nla_get_u32 (scalar_t__) ;
 int nla_get_u8 (scalar_t__) ;
 int nla_len (scalar_t__) ;
 int strcpy (int ,int ) ;
 int strnlen (int ,int) ;

__attribute__((used)) static int
devlink_param_value_get_from_info(const struct devlink_param *param,
      struct genl_info *info,
      union devlink_param_value *value)
{
 int len;

 if (param->type != 132 &&
     !info->attrs[DEVLINK_ATTR_PARAM_VALUE_DATA])
  return -EINVAL;

 switch (param->type) {
 case 128:
  value->vu8 = nla_get_u8(info->attrs[DEVLINK_ATTR_PARAM_VALUE_DATA]);
  break;
 case 130:
  value->vu16 = nla_get_u16(info->attrs[DEVLINK_ATTR_PARAM_VALUE_DATA]);
  break;
 case 129:
  value->vu32 = nla_get_u32(info->attrs[DEVLINK_ATTR_PARAM_VALUE_DATA]);
  break;
 case 131:
  len = strnlen(nla_data(info->attrs[DEVLINK_ATTR_PARAM_VALUE_DATA]),
         nla_len(info->attrs[DEVLINK_ATTR_PARAM_VALUE_DATA]));
  if (len == nla_len(info->attrs[DEVLINK_ATTR_PARAM_VALUE_DATA]) ||
      len >= __DEVLINK_PARAM_MAX_STRING_VALUE)
   return -EINVAL;
  strcpy(value->vstr,
         nla_data(info->attrs[DEVLINK_ATTR_PARAM_VALUE_DATA]));
  break;
 case 132:
  value->vbool = info->attrs[DEVLINK_ATTR_PARAM_VALUE_DATA] ?
          1 : 0;
  break;
 }
 return 0;
}
