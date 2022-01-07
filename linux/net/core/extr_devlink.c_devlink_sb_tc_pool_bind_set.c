
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct devlink_port {TYPE_1__* devlink; } ;
struct devlink_ops {int (* sb_tc_pool_bind_set ) (struct devlink_port*,unsigned int,int ,int,int ,int ,struct netlink_ext_ack*) ;} ;
typedef enum devlink_sb_pool_type { ____Placeholder_devlink_sb_pool_type } devlink_sb_pool_type ;
struct TYPE_2__ {struct devlink_ops* ops; } ;


 int EOPNOTSUPP ;
 int stub1 (struct devlink_port*,unsigned int,int ,int,int ,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int devlink_sb_tc_pool_bind_set(struct devlink_port *devlink_port,
           unsigned int sb_index, u16 tc_index,
           enum devlink_sb_pool_type pool_type,
           u16 pool_index, u32 threshold,
           struct netlink_ext_ack *extack)

{
 const struct devlink_ops *ops = devlink_port->devlink->ops;

 if (ops->sb_tc_pool_bind_set)
  return ops->sb_tc_pool_bind_set(devlink_port, sb_index,
      tc_index, pool_type,
      pool_index, threshold, extack);
 return -EOPNOTSUPP;
}
