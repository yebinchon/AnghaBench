
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int* arg; } ;
typedef int kp_local ;


 int memcpy (struct kernel_param*,struct kernel_param const*,int) ;
 int param_get_bool (char*,struct kernel_param*) ;

__attribute__((used)) static int param_get_aaintbool(char *buffer, const struct kernel_param *kp)
{
 struct kernel_param kp_local;
 bool value;


 value = !!*((int *)kp->arg);
 memcpy(&kp_local, kp, sizeof(kp_local));
 kp_local.arg = &value;

 return param_get_bool(buffer, &kp_local);
}
