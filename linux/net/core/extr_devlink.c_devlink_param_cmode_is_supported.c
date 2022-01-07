
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_param {int supported_cmodes; } ;
typedef enum devlink_param_cmode { ____Placeholder_devlink_param_cmode } devlink_param_cmode ;


 int test_bit (int,int *) ;

__attribute__((used)) static bool
devlink_param_cmode_is_supported(const struct devlink_param *param,
     enum devlink_param_cmode cmode)
{
 return test_bit(cmode, &param->supported_cmodes);
}
