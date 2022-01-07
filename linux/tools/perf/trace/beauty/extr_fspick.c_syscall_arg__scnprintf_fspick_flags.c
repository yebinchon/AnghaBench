
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {unsigned long val; int show_string_prefix; } ;


 size_t fspick__scnprintf_flags (unsigned long,char*,size_t,int ) ;

size_t syscall_arg__scnprintf_fspick_flags(char *bf, size_t size, struct syscall_arg *arg)
{
 unsigned long flags = arg->val;

 return fspick__scnprintf_flags(flags, bf, size, arg->show_string_prefix);
}
