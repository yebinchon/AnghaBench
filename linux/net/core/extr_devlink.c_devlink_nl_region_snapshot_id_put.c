
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct devlink_snapshot {int id; } ;
struct devlink {int dummy; } ;


 int DEVLINK_ATTR_REGION_SNAPSHOT ;
 int DEVLINK_ATTR_REGION_SNAPSHOT_ID ;
 int EINVAL ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int devlink_nl_region_snapshot_id_put(struct sk_buff *msg,
          struct devlink *devlink,
          struct devlink_snapshot *snapshot)
{
 struct nlattr *snap_attr;
 int err;

 snap_attr = nla_nest_start_noflag(msg, DEVLINK_ATTR_REGION_SNAPSHOT);
 if (!snap_attr)
  return -EINVAL;

 err = nla_put_u32(msg, DEVLINK_ATTR_REGION_SNAPSHOT_ID, snapshot->id);
 if (err)
  goto nla_put_failure;

 nla_nest_end(msg, snap_attr);
 return 0;

nla_put_failure:
 nla_nest_cancel(msg, snap_attr);
 return err;
}
