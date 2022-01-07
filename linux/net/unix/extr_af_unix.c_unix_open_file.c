
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct path {int dentry; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int user_ns; } ;
struct TYPE_3__ {struct path path; int addr; } ;


 int CAP_NET_ADMIN ;
 int ENOENT ;
 int EPERM ;
 scalar_t__ IS_ERR (struct file*) ;
 int O_CLOEXEC ;
 int O_PATH ;
 int PTR_ERR (struct file*) ;
 int current_cred () ;
 struct file* dentry_open (struct path*,int ,int ) ;
 int fd_install (int,struct file*) ;
 int get_unused_fd_flags (int ) ;
 int ns_capable (int ,int ) ;
 int path_get (struct path*) ;
 int path_put (struct path*) ;
 int put_unused_fd (int) ;
 int smp_load_acquire (int *) ;
 TYPE_2__* sock_net (struct sock*) ;
 TYPE_1__* unix_sk (struct sock*) ;

__attribute__((used)) static int unix_open_file(struct sock *sk)
{
 struct path path;
 struct file *f;
 int fd;

 if (!ns_capable(sock_net(sk)->user_ns, CAP_NET_ADMIN))
  return -EPERM;

 if (!smp_load_acquire(&unix_sk(sk)->addr))
  return -ENOENT;

 path = unix_sk(sk)->path;
 if (!path.dentry)
  return -ENOENT;

 path_get(&path);

 fd = get_unused_fd_flags(O_CLOEXEC);
 if (fd < 0)
  goto out;

 f = dentry_open(&path, O_PATH, current_cred());
 if (IS_ERR(f)) {
  put_unused_fd(fd);
  fd = PTR_ERR(f);
  goto out;
 }

 fd_install(fd, f);
out:
 path_put(&path);

 return fd;
}
