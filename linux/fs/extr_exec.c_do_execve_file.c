
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* native; } ;
struct user_arg_ptr {TYPE_1__ ptr; } ;
struct file {int dummy; } ;


 int AT_FDCWD ;
 int __do_execve_file (int ,int *,struct user_arg_ptr,struct user_arg_ptr,int ,struct file*) ;

int do_execve_file(struct file *file, void *__argv, void *__envp)
{
 struct user_arg_ptr argv = { .ptr.native = __argv };
 struct user_arg_ptr envp = { .ptr.native = __envp };

 return __do_execve_file(AT_FDCWD, ((void*)0), argv, envp, 0, file);
}
