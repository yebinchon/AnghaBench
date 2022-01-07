
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct devlink_sb_pool_info {int cell_size; int threshold_type; int size; int pool_type; } ;
struct devlink_sb {int index; } ;
struct devlink {TYPE_1__* ops; } ;
typedef enum devlink_command { ____Placeholder_devlink_command } devlink_command ;
struct TYPE_2__ {int (* sb_pool_get ) (struct devlink*,int ,int ,struct devlink_sb_pool_info*) ;} ;


 int DEVLINK_ATTR_SB_INDEX ;
 int DEVLINK_ATTR_SB_POOL_CELL_SIZE ;
 int DEVLINK_ATTR_SB_POOL_INDEX ;
 int DEVLINK_ATTR_SB_POOL_SIZE ;
 int DEVLINK_ATTR_SB_POOL_THRESHOLD_TYPE ;
 int DEVLINK_ATTR_SB_POOL_TYPE ;
 int EMSGSIZE ;
 int devlink_nl_family ;
 scalar_t__ devlink_nl_put_handle (struct sk_buff*,struct devlink*) ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int,int) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 int stub1 (struct devlink*,int ,int ,struct devlink_sb_pool_info*) ;

__attribute__((used)) static int devlink_nl_sb_pool_fill(struct sk_buff *msg, struct devlink *devlink,
       struct devlink_sb *devlink_sb,
       u16 pool_index, enum devlink_command cmd,
       u32 portid, u32 seq, int flags)
{
 struct devlink_sb_pool_info pool_info;
 void *hdr;
 int err;

 err = devlink->ops->sb_pool_get(devlink, devlink_sb->index,
     pool_index, &pool_info);
 if (err)
  return err;

 hdr = genlmsg_put(msg, portid, seq, &devlink_nl_family, flags, cmd);
 if (!hdr)
  return -EMSGSIZE;

 if (devlink_nl_put_handle(msg, devlink))
  goto nla_put_failure;
 if (nla_put_u32(msg, DEVLINK_ATTR_SB_INDEX, devlink_sb->index))
  goto nla_put_failure;
 if (nla_put_u16(msg, DEVLINK_ATTR_SB_POOL_INDEX, pool_index))
  goto nla_put_failure;
 if (nla_put_u8(msg, DEVLINK_ATTR_SB_POOL_TYPE, pool_info.pool_type))
  goto nla_put_failure;
 if (nla_put_u32(msg, DEVLINK_ATTR_SB_POOL_SIZE, pool_info.size))
  goto nla_put_failure;
 if (nla_put_u8(msg, DEVLINK_ATTR_SB_POOL_THRESHOLD_TYPE,
         pool_info.threshold_type))
  goto nla_put_failure;
 if (nla_put_u32(msg, DEVLINK_ATTR_SB_POOL_CELL_SIZE,
   pool_info.cell_size))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);
 return 0;

nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
