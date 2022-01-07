
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct io_ring_ctx {TYPE_2__* ring_sock; } ;
struct file {int dummy; } ;
struct TYPE_5__ {TYPE_1__* sk; struct file* file; } ;
struct TYPE_4__ {struct io_ring_ctx* sk_user_data; } ;


 int IPPROTO_IP ;
 scalar_t__ IS_ERR (struct file*) ;
 int O_CLOEXEC ;
 int O_RDWR ;
 int PF_UNIX ;
 int PTR_ERR (struct file*) ;
 int SOCK_RAW ;
 struct file* anon_inode_getfile (char*,int *,struct io_ring_ctx*,int) ;
 int fd_install (int,struct file*) ;
 int get_unused_fd_flags (int) ;
 int init_net ;
 int io_uring_fops ;
 int put_unused_fd (int) ;
 int sock_create_kern (int *,int ,int ,int ,TYPE_2__**) ;
 int sock_release (TYPE_2__*) ;

__attribute__((used)) static int io_uring_get_fd(struct io_ring_ctx *ctx)
{
 struct file *file;
 int ret;
 ret = get_unused_fd_flags(O_RDWR | O_CLOEXEC);
 if (ret < 0)
  goto err;

 file = anon_inode_getfile("[io_uring]", &io_uring_fops, ctx,
     O_RDWR | O_CLOEXEC);
 if (IS_ERR(file)) {
  put_unused_fd(ret);
  ret = PTR_ERR(file);
  goto err;
 }





 fd_install(ret, file);
 return ret;
err:




 return ret;
}
