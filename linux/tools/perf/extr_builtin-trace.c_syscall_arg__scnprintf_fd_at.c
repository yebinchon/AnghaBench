
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {int val; scalar_t__ show_string_prefix; } ;


 int AT_FDCWD ;
 size_t scnprintf (char*,size_t,char*,char const*,char*) ;
 size_t syscall_arg__scnprintf_fd (char*,size_t,struct syscall_arg*) ;

__attribute__((used)) static size_t syscall_arg__scnprintf_fd_at(char *bf, size_t size,
        struct syscall_arg *arg)
{
 int fd = arg->val;
 const char *prefix = "AT_FD";

 if (fd == AT_FDCWD)
  return scnprintf(bf, size, "%s%s", arg->show_string_prefix ? prefix : "", "CWD");

 return syscall_arg__scnprintf_fd(bf, size, arg);
}
