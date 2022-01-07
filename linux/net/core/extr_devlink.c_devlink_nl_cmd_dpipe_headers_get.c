
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {struct devlink** user_ptr; } ;
struct devlink {int dpipe_headers; } ;


 int DEVLINK_CMD_DPIPE_HEADERS_GET ;
 int EOPNOTSUPP ;
 int devlink_dpipe_headers_fill (struct genl_info*,int ,int ,int ) ;

__attribute__((used)) static int devlink_nl_cmd_dpipe_headers_get(struct sk_buff *skb,
         struct genl_info *info)
{
 struct devlink *devlink = info->user_ptr[0];

 if (!devlink->dpipe_headers)
  return -EOPNOTSUPP;
 return devlink_dpipe_headers_fill(info, DEVLINK_CMD_DPIPE_HEADERS_GET,
       0, devlink->dpipe_headers);
}
