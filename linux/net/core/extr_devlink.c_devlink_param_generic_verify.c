
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devlink_param {size_t id; scalar_t__ type; int name; } ;
struct TYPE_2__ {scalar_t__ type; int name; } ;


 size_t DEVLINK_PARAM_GENERIC_ID_MAX ;
 int EINVAL ;
 int ENOENT ;
 int WARN_ON (int) ;
 TYPE_1__* devlink_param_generic ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int devlink_param_generic_verify(const struct devlink_param *param)
{

 if (param->id > DEVLINK_PARAM_GENERIC_ID_MAX)
  return -EINVAL;
 if (strcmp(param->name, devlink_param_generic[param->id].name))
  return -ENOENT;

 WARN_ON(param->type != devlink_param_generic[param->id].type);

 return 0;
}
