
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink {int dummy; } ;


 int devlink_port_get_by_index (struct devlink*,unsigned int) ;

__attribute__((used)) static bool devlink_port_index_exists(struct devlink *devlink,
          unsigned int port_index)
{
 return devlink_port_get_by_index(devlink, port_index);
}
