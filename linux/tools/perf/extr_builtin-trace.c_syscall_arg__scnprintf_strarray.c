
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {int dummy; } ;


 size_t __syscall_arg__scnprintf_strarray (char*,size_t,char*,struct syscall_arg*) ;

__attribute__((used)) static size_t syscall_arg__scnprintf_strarray(char *bf, size_t size,
           struct syscall_arg *arg)
{
 return __syscall_arg__scnprintf_strarray(bf, size, "%d", arg);
}
