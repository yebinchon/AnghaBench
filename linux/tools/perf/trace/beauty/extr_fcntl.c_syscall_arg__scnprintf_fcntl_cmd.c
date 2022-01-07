
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {scalar_t__ val; int mask; } ;


 scalar_t__ F_DUPFD ;
 scalar_t__ F_DUPFD_CLOEXEC ;
 scalar_t__ F_GETFD ;
 scalar_t__ F_GETFL ;
 scalar_t__ F_GETLEASE ;
 scalar_t__ F_GETOWN ;
 scalar_t__ F_GETSIG ;
 scalar_t__ F_GET_SEALS ;
 int syscall_arg__scnprintf_fcntl_getfd ;
 int syscall_arg__scnprintf_fcntl_getlease ;
 int syscall_arg__scnprintf_fd ;
 int syscall_arg__scnprintf_open_flags ;
 int syscall_arg__scnprintf_pid ;
 size_t syscall_arg__scnprintf_strarrays (char*,size_t,struct syscall_arg*) ;
 int syscall_arg__set_ret_scnprintf (struct syscall_arg*,int ) ;

size_t syscall_arg__scnprintf_fcntl_cmd(char *bf, size_t size, struct syscall_arg *arg)
{
 if (arg->val == F_GETFL) {
  syscall_arg__set_ret_scnprintf(arg, syscall_arg__scnprintf_open_flags);
  goto mask_arg;
 }
 if (arg->val == F_GETFD) {
  syscall_arg__set_ret_scnprintf(arg, syscall_arg__scnprintf_fcntl_getfd);
  goto mask_arg;
 }
 if (arg->val == F_DUPFD_CLOEXEC || arg->val == F_DUPFD) {
  syscall_arg__set_ret_scnprintf(arg, syscall_arg__scnprintf_fd);
  goto out;
 }
 if (arg->val == F_GETOWN) {
  syscall_arg__set_ret_scnprintf(arg, syscall_arg__scnprintf_pid);
  goto mask_arg;
 }
 if (arg->val == F_GETLEASE) {
  syscall_arg__set_ret_scnprintf(arg, syscall_arg__scnprintf_fcntl_getlease);
  goto mask_arg;
 }



 if (arg->val == F_GET_SEALS ||
     arg->val == F_GETSIG) {
mask_arg:
  arg->mask |= (1 << 2);
 }
out:
 return syscall_arg__scnprintf_strarrays(bf, size, arg);
}
