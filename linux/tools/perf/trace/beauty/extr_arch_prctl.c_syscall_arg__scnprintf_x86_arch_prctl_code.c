
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {unsigned long val; int show_string_prefix; } ;


 size_t x86_arch_prctl__scnprintf_code (unsigned long,char*,size_t,int ) ;

size_t syscall_arg__scnprintf_x86_arch_prctl_code(char *bf, size_t size, struct syscall_arg *arg)
{
 unsigned long code = arg->val;

 return x86_arch_prctl__scnprintf_code(code, bf, size, arg->show_string_prefix);
}
