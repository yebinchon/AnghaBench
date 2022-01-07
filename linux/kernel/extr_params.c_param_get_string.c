
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kparam_string {int string; } ;
struct kernel_param {struct kparam_string* str; } ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;

int param_get_string(char *buffer, const struct kernel_param *kp)
{
 const struct kparam_string *kps = kp->str;
 return scnprintf(buffer, PAGE_SIZE, "%s\n", kps->string);
}
