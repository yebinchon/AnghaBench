
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devlink_param {int id; int name; } ;
struct TYPE_2__ {int name; } ;


 int DEVLINK_PARAM_GENERIC_ID_MAX ;
 int EEXIST ;
 int EINVAL ;
 TYPE_1__* devlink_param_generic ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int devlink_param_driver_verify(const struct devlink_param *param)
{
 int i;

 if (param->id <= DEVLINK_PARAM_GENERIC_ID_MAX)
  return -EINVAL;

 for (i = 0; i <= DEVLINK_PARAM_GENERIC_ID_MAX; i++)
  if (!strcmp(param->name, devlink_param_generic[i].name))
   return -EEXIST;

 return 0;
}
