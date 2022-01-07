
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {struct devlink_sb** user_ptr; } ;
struct devlink_sb {int index; struct devlink_ops* ops; } ;
struct devlink_ops {int (* sb_occ_max_clear ) (struct devlink_sb*,int ) ;} ;
struct devlink {int index; struct devlink_ops* ops; } ;


 int EOPNOTSUPP ;
 int stub1 (struct devlink_sb*,int ) ;

__attribute__((used)) static int devlink_nl_cmd_sb_occ_max_clear_doit(struct sk_buff *skb,
      struct genl_info *info)
{
 struct devlink *devlink = info->user_ptr[0];
 struct devlink_sb *devlink_sb = info->user_ptr[1];
 const struct devlink_ops *ops = devlink->ops;

 if (ops->sb_occ_max_clear)
  return ops->sb_occ_max_clear(devlink, devlink_sb->index);
 return -EOPNOTSUPP;
}
