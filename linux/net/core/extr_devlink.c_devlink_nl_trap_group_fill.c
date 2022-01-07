
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct devlink_trap_group_item {int stats; TYPE_1__* group; } ;
struct devlink {int dummy; } ;
typedef enum devlink_command { ____Placeholder_devlink_command } devlink_command ;
struct TYPE_2__ {scalar_t__ generic; int name; } ;


 int DEVLINK_ATTR_TRAP_GENERIC ;
 int DEVLINK_ATTR_TRAP_GROUP_NAME ;
 int EMSGSIZE ;
 int devlink_nl_family ;
 scalar_t__ devlink_nl_put_handle (struct sk_buff*,struct devlink*) ;
 int devlink_trap_stats_put (struct sk_buff*,int ) ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int,int) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int
devlink_nl_trap_group_fill(struct sk_buff *msg, struct devlink *devlink,
      const struct devlink_trap_group_item *group_item,
      enum devlink_command cmd, u32 portid, u32 seq,
      int flags)
{
 void *hdr;
 int err;

 hdr = genlmsg_put(msg, portid, seq, &devlink_nl_family, flags, cmd);
 if (!hdr)
  return -EMSGSIZE;

 if (devlink_nl_put_handle(msg, devlink))
  goto nla_put_failure;

 if (nla_put_string(msg, DEVLINK_ATTR_TRAP_GROUP_NAME,
      group_item->group->name))
  goto nla_put_failure;

 if (group_item->group->generic &&
     nla_put_flag(msg, DEVLINK_ATTR_TRAP_GENERIC))
  goto nla_put_failure;

 err = devlink_trap_stats_put(msg, group_item->stats);
 if (err)
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 return 0;

nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
