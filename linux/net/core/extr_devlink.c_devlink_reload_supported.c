
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devlink {TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ reload_up; scalar_t__ reload_down; } ;



__attribute__((used)) static bool devlink_reload_supported(struct devlink *devlink)
{
 return devlink->ops->reload_down && devlink->ops->reload_up;
}
