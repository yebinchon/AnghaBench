
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {int val; int show_string_prefix; int parm; } ;


 size_t strarrays__scnprintf (int ,char*,size_t,char*,int ,int ) ;

size_t syscall_arg__scnprintf_strarrays(char *bf, size_t size,
     struct syscall_arg *arg)
{
 return strarrays__scnprintf(arg->parm, bf, size, "%d", arg->show_string_prefix, arg->val);
}
