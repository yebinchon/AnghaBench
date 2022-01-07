
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct netlink_ext_ack {int dummy; } ;
struct devlink {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* port_split ) (struct devlink*,int ,int ,struct netlink_ext_ack*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct devlink*,int ,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int devlink_port_split(struct devlink *devlink, u32 port_index,
         u32 count, struct netlink_ext_ack *extack)

{
 if (devlink->ops->port_split)
  return devlink->ops->port_split(devlink, port_index, count,
      extack);
 return -EOPNOTSUPP;
}
