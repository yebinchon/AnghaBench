
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct devlink_ops {int (* sb_pool_set ) (struct devlink*,unsigned int,int ,int ,int,struct netlink_ext_ack*) ;} ;
struct devlink {struct devlink_ops* ops; } ;
typedef enum devlink_sb_threshold_type { ____Placeholder_devlink_sb_threshold_type } devlink_sb_threshold_type ;


 int EOPNOTSUPP ;
 int stub1 (struct devlink*,unsigned int,int ,int ,int,struct netlink_ext_ack*) ;

__attribute__((used)) static int devlink_sb_pool_set(struct devlink *devlink, unsigned int sb_index,
          u16 pool_index, u32 size,
          enum devlink_sb_threshold_type threshold_type,
          struct netlink_ext_ack *extack)

{
 const struct devlink_ops *ops = devlink->ops;

 if (ops->sb_pool_set)
  return ops->sb_pool_set(devlink, sb_index, pool_index,
     size, threshold_type, extack);
 return -EOPNOTSUPP;
}
