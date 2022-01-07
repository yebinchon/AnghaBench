
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {int show_string_prefix; int val; } ;


 size_t fcntl__scnprintf_getfd (int ,char*,size_t,int ) ;

__attribute__((used)) static size_t syscall_arg__scnprintf_fcntl_getfd(char *bf, size_t size, struct syscall_arg *arg)
{
 return fcntl__scnprintf_getfd(arg->val, bf, size, arg->show_string_prefix);
}
