
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union devlink_param_value {int vu8; int vbool; int vstr; int vu32; int vu16; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
typedef enum devlink_param_type { ____Placeholder_devlink_param_type } devlink_param_type ;
typedef enum devlink_param_cmode { ____Placeholder_devlink_param_cmode } devlink_param_cmode ;


 int DEVLINK_ATTR_PARAM_VALUE ;
 int DEVLINK_ATTR_PARAM_VALUE_CMODE ;
 int DEVLINK_ATTR_PARAM_VALUE_DATA ;





 int EMSGSIZE ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 int nla_put_flag (struct sk_buff*,int ) ;
 int nla_put_string (struct sk_buff*,int ,int ) ;
 int nla_put_u16 (struct sk_buff*,int ,int ) ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int) ;

__attribute__((used)) static int
devlink_nl_param_value_fill_one(struct sk_buff *msg,
    enum devlink_param_type type,
    enum devlink_param_cmode cmode,
    union devlink_param_value val)
{
 struct nlattr *param_value_attr;

 param_value_attr = nla_nest_start_noflag(msg,
       DEVLINK_ATTR_PARAM_VALUE);
 if (!param_value_attr)
  goto nla_put_failure;

 if (nla_put_u8(msg, DEVLINK_ATTR_PARAM_VALUE_CMODE, cmode))
  goto value_nest_cancel;

 switch (type) {
 case 128:
  if (nla_put_u8(msg, DEVLINK_ATTR_PARAM_VALUE_DATA, val.vu8))
   goto value_nest_cancel;
  break;
 case 130:
  if (nla_put_u16(msg, DEVLINK_ATTR_PARAM_VALUE_DATA, val.vu16))
   goto value_nest_cancel;
  break;
 case 129:
  if (nla_put_u32(msg, DEVLINK_ATTR_PARAM_VALUE_DATA, val.vu32))
   goto value_nest_cancel;
  break;
 case 131:
  if (nla_put_string(msg, DEVLINK_ATTR_PARAM_VALUE_DATA,
       val.vstr))
   goto value_nest_cancel;
  break;
 case 132:
  if (val.vbool &&
      nla_put_flag(msg, DEVLINK_ATTR_PARAM_VALUE_DATA))
   goto value_nest_cancel;
  break;
 }

 nla_nest_end(msg, param_value_attr);
 return 0;

value_nest_cancel:
 nla_nest_cancel(msg, param_value_attr);
nla_put_failure:
 return -EMSGSIZE;
}
