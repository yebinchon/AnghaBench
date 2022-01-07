
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {int val; int show_string_prefix; int parm; } ;


 size_t strarray__scnprintf_flags (int ,char*,size_t,int ,int ) ;

size_t syscall_arg__scnprintf_strarray_flags(char *bf, size_t size, struct syscall_arg *arg)
{
 return strarray__scnprintf_flags(arg->parm, bf, size, arg->show_string_prefix, arg->val);
}
