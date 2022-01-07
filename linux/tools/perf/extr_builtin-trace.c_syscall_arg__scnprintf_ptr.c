
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {scalar_t__ val; } ;


 size_t scnprintf (char*,size_t,char*) ;
 size_t syscall_arg__scnprintf_hex (char*,size_t,struct syscall_arg*) ;

size_t syscall_arg__scnprintf_ptr(char *bf, size_t size, struct syscall_arg *arg)
{
 if (arg->val == 0)
  return scnprintf(bf, size, "NULL");
 return syscall_arg__scnprintf_hex(bf, size, arg);
}
