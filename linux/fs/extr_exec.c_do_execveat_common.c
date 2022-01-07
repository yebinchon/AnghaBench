
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_arg_ptr {int dummy; } ;
struct filename {int dummy; } ;


 int __do_execve_file (int,struct filename*,struct user_arg_ptr,struct user_arg_ptr,int,int *) ;

__attribute__((used)) static int do_execveat_common(int fd, struct filename *filename,
         struct user_arg_ptr argv,
         struct user_arg_ptr envp,
         int flags)
{
 return __do_execve_file(fd, filename, argv, envp, flags, ((void*)0));
}
