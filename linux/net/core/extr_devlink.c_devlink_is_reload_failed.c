
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink {int reload_failed; } ;



bool devlink_is_reload_failed(const struct devlink *devlink)
{
 return devlink->reload_failed;
}
