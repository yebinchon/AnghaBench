
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_acl_param {int data; } ;


 int EINVAL ;
 scalar_t__ tomoyo_str_starts (int *,char*) ;
 int tomoyo_write_env (struct tomoyo_acl_param*) ;

int tomoyo_write_misc(struct tomoyo_acl_param *param)
{
 if (tomoyo_str_starts(&param->data, "env "))
  return tomoyo_write_env(param);
 return -EINVAL;
}
