
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_arg {int val; int trace; int thread; } ;


 size_t scnprintf (char*,size_t,char*,...) ;
 char* thread__fd_path (int ,int,int ) ;

size_t syscall_arg__scnprintf_fd(char *bf, size_t size, struct syscall_arg *arg)
{
 int fd = arg->val;
 size_t printed = scnprintf(bf, size, "%d", fd);
 const char *path = thread__fd_path(arg->thread, fd, arg->trace);

 if (path)
  printed += scnprintf(bf + printed, size - printed, "<%s>", path);

 return printed;
}
