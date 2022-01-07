
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct devlink_info_req {struct sk_buff* msg; } ;
struct devlink {TYPE_1__* ops; } ;
typedef enum devlink_command { ____Placeholder_devlink_command } devlink_command ;
struct TYPE_2__ {int (* info_get ) (struct devlink*,struct devlink_info_req*,struct netlink_ext_ack*) ;} ;


 int EMSGSIZE ;
 int devlink_nl_family ;
 scalar_t__ devlink_nl_put_handle (struct sk_buff*,struct devlink*) ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int,int) ;
 int stub1 (struct devlink*,struct devlink_info_req*,struct netlink_ext_ack*) ;

__attribute__((used)) static int
devlink_nl_info_fill(struct sk_buff *msg, struct devlink *devlink,
       enum devlink_command cmd, u32 portid,
       u32 seq, int flags, struct netlink_ext_ack *extack)
{
 struct devlink_info_req req;
 void *hdr;
 int err;

 hdr = genlmsg_put(msg, portid, seq, &devlink_nl_family, flags, cmd);
 if (!hdr)
  return -EMSGSIZE;

 err = -EMSGSIZE;
 if (devlink_nl_put_handle(msg, devlink))
  goto err_cancel_msg;

 req.msg = msg;
 err = devlink->ops->info_get(devlink, &req, extack);
 if (err)
  goto err_cancel_msg;

 genlmsg_end(msg, hdr);
 return 0;

err_cancel_msg:
 genlmsg_cancel(msg, hdr);
 return err;
}
