
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
typedef void ns_common ;
typedef void file ;


 int EAGAIN ;
 void* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (void*) ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int PTR_ERR (void*) ;
 void* __ns_get_path (struct path*,void*) ;
 int current_cred () ;
 void* dentry_open (struct path*,int ,int ) ;
 int fd_install (int,void*) ;
 int get_unused_fd_flags (int ) ;
 int path_put (struct path*) ;
 int put_unused_fd (int) ;

int open_related_ns(struct ns_common *ns,
     struct ns_common *(*get_ns)(struct ns_common *ns))
{
 struct path path = {};
 struct file *f;
 void *err;
 int fd;

 fd = get_unused_fd_flags(O_CLOEXEC);
 if (fd < 0)
  return fd;

 do {
  struct ns_common *relative;

  relative = get_ns(ns);
  if (IS_ERR(relative)) {
   put_unused_fd(fd);
   return PTR_ERR(relative);
  }

  err = __ns_get_path(&path, relative);
 } while (err == ERR_PTR(-EAGAIN));

 if (IS_ERR(err)) {
  put_unused_fd(fd);
  return PTR_ERR(err);
 }

 f = dentry_open(&path, O_RDONLY, current_cred());
 path_put(&path);
 if (IS_ERR(f)) {
  put_unused_fd(fd);
  fd = PTR_ERR(f);
 } else
  fd_install(fd, f);

 return fd;
}
