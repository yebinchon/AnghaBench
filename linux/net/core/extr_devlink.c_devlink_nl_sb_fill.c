
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct devlink_sb {int egress_tc_count; int ingress_tc_count; int egress_pools_count; int ingress_pools_count; int size; int index; } ;
struct devlink {int dummy; } ;
typedef enum devlink_command { ____Placeholder_devlink_command } devlink_command ;


 int DEVLINK_ATTR_SB_EGRESS_POOL_COUNT ;
 int DEVLINK_ATTR_SB_EGRESS_TC_COUNT ;
 int DEVLINK_ATTR_SB_INDEX ;
 int DEVLINK_ATTR_SB_INGRESS_POOL_COUNT ;
 int DEVLINK_ATTR_SB_INGRESS_TC_COUNT ;
 int DEVLINK_ATTR_SB_SIZE ;
 int EMSGSIZE ;
 int devlink_nl_family ;
 scalar_t__ devlink_nl_put_handle (struct sk_buff*,struct devlink*) ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int,int) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int devlink_nl_sb_fill(struct sk_buff *msg, struct devlink *devlink,
         struct devlink_sb *devlink_sb,
         enum devlink_command cmd, u32 portid,
         u32 seq, int flags)
{
 void *hdr;

 hdr = genlmsg_put(msg, portid, seq, &devlink_nl_family, flags, cmd);
 if (!hdr)
  return -EMSGSIZE;

 if (devlink_nl_put_handle(msg, devlink))
  goto nla_put_failure;
 if (nla_put_u32(msg, DEVLINK_ATTR_SB_INDEX, devlink_sb->index))
  goto nla_put_failure;
 if (nla_put_u32(msg, DEVLINK_ATTR_SB_SIZE, devlink_sb->size))
  goto nla_put_failure;
 if (nla_put_u16(msg, DEVLINK_ATTR_SB_INGRESS_POOL_COUNT,
   devlink_sb->ingress_pools_count))
  goto nla_put_failure;
 if (nla_put_u16(msg, DEVLINK_ATTR_SB_EGRESS_POOL_COUNT,
   devlink_sb->egress_pools_count))
  goto nla_put_failure;
 if (nla_put_u16(msg, DEVLINK_ATTR_SB_INGRESS_TC_COUNT,
   devlink_sb->ingress_tc_count))
  goto nla_put_failure;
 if (nla_put_u16(msg, DEVLINK_ATTR_SB_EGRESS_TC_COUNT,
   devlink_sb->egress_tc_count))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);
 return 0;

nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
