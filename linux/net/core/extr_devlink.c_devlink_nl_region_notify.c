
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct devlink_snapshot {int id; } ;
struct devlink_region {int size; int name; struct devlink* devlink; } ;
struct devlink {int dummy; } ;
typedef enum devlink_command { ____Placeholder_devlink_command } devlink_command ;


 int DEVLINK_ATTR_PAD ;
 int DEVLINK_ATTR_REGION_NAME ;
 int DEVLINK_ATTR_REGION_SIZE ;
 int DEVLINK_ATTR_REGION_SNAPSHOT_ID ;
 int DEVLINK_CMD_REGION_DEL ;
 int DEVLINK_CMD_REGION_NEW ;
 int DEVLINK_MCGRP_CONFIG ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int WARN_ON (int) ;
 int devlink_net (struct devlink*) ;
 int devlink_nl_family ;
 int devlink_nl_put_handle (struct sk_buff*,struct devlink*) ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int) ;
 int nla_put_string (struct sk_buff*,int ,int ) ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static void devlink_nl_region_notify(struct devlink_region *region,
         struct devlink_snapshot *snapshot,
         enum devlink_command cmd)
{
 struct devlink *devlink = region->devlink;
 struct sk_buff *msg;
 void *hdr;
 int err;

 WARN_ON(cmd != DEVLINK_CMD_REGION_NEW && cmd != DEVLINK_CMD_REGION_DEL);

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return;

 hdr = genlmsg_put(msg, 0, 0, &devlink_nl_family, 0, cmd);
 if (!hdr)
  goto out_free_msg;

 err = devlink_nl_put_handle(msg, devlink);
 if (err)
  goto out_cancel_msg;

 err = nla_put_string(msg, DEVLINK_ATTR_REGION_NAME,
        region->name);
 if (err)
  goto out_cancel_msg;

 if (snapshot) {
  err = nla_put_u32(msg, DEVLINK_ATTR_REGION_SNAPSHOT_ID,
      snapshot->id);
  if (err)
   goto out_cancel_msg;
 } else {
  err = nla_put_u64_64bit(msg, DEVLINK_ATTR_REGION_SIZE,
     region->size, DEVLINK_ATTR_PAD);
  if (err)
   goto out_cancel_msg;
 }
 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(&devlink_nl_family, devlink_net(devlink),
    msg, 0, DEVLINK_MCGRP_CONFIG, GFP_KERNEL);

 return;

out_cancel_msg:
 genlmsg_cancel(msg, hdr);
out_free_msg:
 nlmsg_free(msg);
}
