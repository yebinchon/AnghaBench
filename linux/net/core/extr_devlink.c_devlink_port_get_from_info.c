
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genl_info {int attrs; } ;
struct devlink_port {int dummy; } ;
struct devlink {int dummy; } ;


 struct devlink_port* devlink_port_get_from_attrs (struct devlink*,int ) ;

__attribute__((used)) static struct devlink_port *devlink_port_get_from_info(struct devlink *devlink,
             struct genl_info *info)
{
 return devlink_port_get_from_attrs(devlink, info->attrs);
}
