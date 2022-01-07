
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {int show_string_prefix; int val; } ;


 int AF_INET ;
 int AF_INET6 ;
 size_t socket__scnprintf_ipproto (int ,char*,size_t,int ) ;
 size_t syscall_arg__scnprintf_int (char*,size_t,struct syscall_arg*) ;
 int syscall_arg__val (struct syscall_arg*,int ) ;

size_t syscall_arg__scnprintf_socket_protocol(char *bf, size_t size, struct syscall_arg *arg)
{
 int domain = syscall_arg__val(arg, 0);

 if (domain == AF_INET || domain == AF_INET6)
  return socket__scnprintf_ipproto(arg->val, bf, size, arg->show_string_prefix);

 return syscall_arg__scnprintf_int(bf, size, arg);
}
