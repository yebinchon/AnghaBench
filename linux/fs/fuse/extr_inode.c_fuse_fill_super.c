
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {scalar_t__ s_user_ns; struct fuse_conn* s_fs_info; } ;
struct fuse_fs_context {int * fudptr; int fd; } ;
struct fuse_conn {int release; } ;
struct fs_context {struct fuse_fs_context* fs_private; } ;
struct file {int private_data; TYPE_1__* f_cred; int * f_op; } ;
struct TYPE_2__ {scalar_t__ user_ns; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct file* fget (int ) ;
 int fput (struct file*) ;
 int fuse_conn_init (struct fuse_conn*,scalar_t__,int *,int *) ;
 int fuse_conn_put (struct fuse_conn*) ;
 int fuse_dev_fiq_ops ;
 int fuse_dev_operations ;
 int fuse_fill_super_common (struct super_block*,struct fuse_fs_context*) ;
 int fuse_free_conn ;
 int fuse_send_init (int ) ;
 int get_fuse_conn_super (struct super_block*) ;
 struct fuse_conn* kmalloc (int,int ) ;

__attribute__((used)) static int fuse_fill_super(struct super_block *sb, struct fs_context *fsc)
{
 struct fuse_fs_context *ctx = fsc->fs_private;
 struct file *file;
 int err;
 struct fuse_conn *fc;

 err = -EINVAL;
 file = fget(ctx->fd);
 if (!file)
  goto err;





 if ((file->f_op != &fuse_dev_operations) ||
     (file->f_cred->user_ns != sb->s_user_ns))
  goto err_fput;
 ctx->fudptr = &file->private_data;

 fc = kmalloc(sizeof(*fc), GFP_KERNEL);
 err = -ENOMEM;
 if (!fc)
  goto err_fput;

 fuse_conn_init(fc, sb->s_user_ns, &fuse_dev_fiq_ops, ((void*)0));
 fc->release = fuse_free_conn;
 sb->s_fs_info = fc;

 err = fuse_fill_super_common(sb, ctx);
 if (err)
  goto err_put_conn;





 fput(file);
 fuse_send_init(get_fuse_conn_super(sb));
 return 0;

 err_put_conn:
 fuse_conn_put(fc);
 sb->s_fs_info = ((void*)0);
 err_fput:
 fput(file);
 err:
 return err;
}
