
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct genl_info {int extack; int * attrs; struct devlink** user_ptr; } ;
struct devlink {int dummy; } ;


 size_t DEVLINK_ATTR_PORT_INDEX ;
 int EINVAL ;
 int devlink_port_unsplit (struct devlink*,int ,int ) ;
 int nla_get_u32 (int ) ;

__attribute__((used)) static int devlink_nl_cmd_port_unsplit_doit(struct sk_buff *skb,
         struct genl_info *info)
{
 struct devlink *devlink = info->user_ptr[0];
 u32 port_index;

 if (!info->attrs[DEVLINK_ATTR_PORT_INDEX])
  return -EINVAL;

 port_index = nla_get_u32(info->attrs[DEVLINK_ATTR_PORT_INDEX]);
 return devlink_port_unsplit(devlink, port_index, info->extack);
}
