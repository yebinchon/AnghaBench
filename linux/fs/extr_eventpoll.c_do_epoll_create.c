
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct eventpoll {struct file* file; } ;


 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int EPOLL_CLOEXEC ;
 scalar_t__ IS_ERR (struct file*) ;
 int O_CLOEXEC ;
 int O_RDWR ;
 int PTR_ERR (struct file*) ;
 struct file* anon_inode_getfile (char*,int *,struct eventpoll*,int) ;
 int ep_alloc (struct eventpoll**) ;
 int ep_free (struct eventpoll*) ;
 int eventpoll_fops ;
 int fd_install (int,struct file*) ;
 int get_unused_fd_flags (int) ;
 int put_unused_fd (int) ;

__attribute__((used)) static int do_epoll_create(int flags)
{
 int error, fd;
 struct eventpoll *ep = ((void*)0);
 struct file *file;


 BUILD_BUG_ON(EPOLL_CLOEXEC != O_CLOEXEC);

 if (flags & ~EPOLL_CLOEXEC)
  return -EINVAL;



 error = ep_alloc(&ep);
 if (error < 0)
  return error;




 fd = get_unused_fd_flags(O_RDWR | (flags & O_CLOEXEC));
 if (fd < 0) {
  error = fd;
  goto out_free_ep;
 }
 file = anon_inode_getfile("[eventpoll]", &eventpoll_fops, ep,
     O_RDWR | (flags & O_CLOEXEC));
 if (IS_ERR(file)) {
  error = PTR_ERR(file);
  goto out_free_fd;
 }
 ep->file = file;
 fd_install(fd, file);
 return fd;

out_free_fd:
 put_unused_fd(fd);
out_free_ep:
 ep_free(ep);
 return error;
}
