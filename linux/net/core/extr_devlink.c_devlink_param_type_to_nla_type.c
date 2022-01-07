
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum devlink_param_type { ____Placeholder_devlink_param_type } devlink_param_type ;







 int EINVAL ;
 int NLA_FLAG ;
 int NLA_STRING ;
 int NLA_U16 ;
 int NLA_U32 ;
 int NLA_U8 ;

__attribute__((used)) static int
devlink_param_type_to_nla_type(enum devlink_param_type param_type)
{
 switch (param_type) {
 case 128:
  return NLA_U8;
 case 130:
  return NLA_U16;
 case 129:
  return NLA_U32;
 case 131:
  return NLA_STRING;
 case 132:
  return NLA_FLAG;
 default:
  return -EINVAL;
 }
}
