
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {int show_string_prefix; int val; } ;


 int PR_SET_MM ;
 int PR_SET_NAME ;
 size_t prctl__scnprintf_set_mm (int ,char*,size_t,int ) ;
 size_t syscall_arg__scnprintf_hex (char*,size_t,struct syscall_arg*) ;
 size_t syscall_arg__scnprintf_long (char*,size_t,struct syscall_arg*) ;
 int syscall_arg__val (struct syscall_arg*,int ) ;

size_t syscall_arg__scnprintf_prctl_arg2(char *bf, size_t size, struct syscall_arg *arg)
{
 int option = syscall_arg__val(arg, 0);

 if (option == PR_SET_MM)
  return prctl__scnprintf_set_mm(arg->val, bf, size, arg->show_string_prefix);




 if (option == PR_SET_NAME)
  return syscall_arg__scnprintf_hex(bf, size, arg);

 return syscall_arg__scnprintf_long(bf, size, arg);
}
