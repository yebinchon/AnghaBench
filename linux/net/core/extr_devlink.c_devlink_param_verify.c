
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_param {scalar_t__ generic; int supported_cmodes; int name; } ;


 int EINVAL ;
 int devlink_param_driver_verify (struct devlink_param const*) ;
 int devlink_param_generic_verify (struct devlink_param const*) ;

__attribute__((used)) static int devlink_param_verify(const struct devlink_param *param)
{
 if (!param || !param->name || !param->supported_cmodes)
  return -EINVAL;
 if (param->generic)
  return devlink_param_generic_verify(param);
 else
  return devlink_param_driver_verify(param);
}
