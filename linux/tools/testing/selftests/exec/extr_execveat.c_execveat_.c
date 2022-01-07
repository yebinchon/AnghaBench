
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int __NR_execveat ;
 int errno ;
 int syscall (int ,int,char const*,char**,char**,int) ;

__attribute__((used)) static int execveat_(int fd, const char *path, char **argv, char **envp,
       int flags)
{



 errno = ENOSYS;
 return -1;

}
