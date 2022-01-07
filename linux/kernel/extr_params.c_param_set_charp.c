
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; int name; } ;


 int ENOMEM ;
 int ENOSPC ;
 char* kmalloc_parameter (int) ;
 int maybe_kfree_parameter (char*) ;
 int pr_err (char*,int ) ;
 scalar_t__ slab_is_available () ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

int param_set_charp(const char *val, const struct kernel_param *kp)
{
 if (strlen(val) > 1024) {
  pr_err("%s: string parameter too long\n", kp->name);
  return -ENOSPC;
 }

 maybe_kfree_parameter(*(char **)kp->arg);



 if (slab_is_available()) {
  *(char **)kp->arg = kmalloc_parameter(strlen(val)+1);
  if (!*(char **)kp->arg)
   return -ENOMEM;
  strcpy(*(char **)kp->arg, val);
 } else
  *(const char **)kp->arg = val;

 return 0;
}
