
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kparam_string {scalar_t__ maxlen; int string; } ;
struct kernel_param {int name; struct kparam_string* str; } ;


 int ENOSPC ;
 int pr_err (char*,int ,scalar_t__) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

int param_set_copystring(const char *val, const struct kernel_param *kp)
{
 const struct kparam_string *kps = kp->str;

 if (strlen(val)+1 > kps->maxlen) {
  pr_err("%s: string doesn't fit in %u chars.\n",
         kp->name, kps->maxlen-1);
  return -ENOSPC;
 }
 strcpy(kps->string, val);
 return 0;
}
