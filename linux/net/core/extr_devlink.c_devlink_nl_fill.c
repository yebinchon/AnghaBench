
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct devlink {int reload_failed; } ;
typedef enum devlink_command { ____Placeholder_devlink_command } devlink_command ;


 int DEVLINK_ATTR_RELOAD_FAILED ;
 int EMSGSIZE ;
 int devlink_nl_family ;
 scalar_t__ devlink_nl_put_handle (struct sk_buff*,struct devlink*) ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int,int) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int devlink_nl_fill(struct sk_buff *msg, struct devlink *devlink,
      enum devlink_command cmd, u32 portid,
      u32 seq, int flags)
{
 void *hdr;

 hdr = genlmsg_put(msg, portid, seq, &devlink_nl_family, flags, cmd);
 if (!hdr)
  return -EMSGSIZE;

 if (devlink_nl_put_handle(msg, devlink))
  goto nla_put_failure;
 if (nla_put_u8(msg, DEVLINK_ATTR_RELOAD_FAILED, devlink->reload_failed))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);
 return 0;

nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
