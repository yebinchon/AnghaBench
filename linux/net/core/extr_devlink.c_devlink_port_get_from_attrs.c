
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct devlink_port {int dummy; } ;
struct devlink {int dummy; } ;


 size_t DEVLINK_ATTR_PORT_INDEX ;
 int EINVAL ;
 int ENODEV ;
 struct devlink_port* ERR_PTR (int ) ;
 struct devlink_port* devlink_port_get_by_index (struct devlink*,int ) ;
 int nla_get_u32 (struct nlattr*) ;

__attribute__((used)) static struct devlink_port *devlink_port_get_from_attrs(struct devlink *devlink,
       struct nlattr **attrs)
{
 if (attrs[DEVLINK_ATTR_PORT_INDEX]) {
  u32 port_index = nla_get_u32(attrs[DEVLINK_ATTR_PORT_INDEX]);
  struct devlink_port *devlink_port;

  devlink_port = devlink_port_get_by_index(devlink, port_index);
  if (!devlink_port)
   return ERR_PTR(-ENODEV);
  return devlink_port;
 }
 return ERR_PTR(-EINVAL);
}
