
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;


 int O_CLOEXEC ;
 int O_RDWR ;
 int anon_inode_getfd (char*,int *,int ,int) ;
 int get_pid (struct pid*) ;
 int pidfd_fops ;
 int put_pid (struct pid*) ;

__attribute__((used)) static int pidfd_create(struct pid *pid)
{
 int fd;

 fd = anon_inode_getfd("[pidfd]", &pidfd_fops, get_pid(pid),
         O_RDWR | O_CLOEXEC);
 if (fd < 0)
  put_pid(pid);

 return fd;
}
