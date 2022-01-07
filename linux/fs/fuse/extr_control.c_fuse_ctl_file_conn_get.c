
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fuse_conn {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct fuse_conn* i_private; } ;


 TYPE_1__* file_inode (struct file*) ;
 struct fuse_conn* fuse_conn_get (struct fuse_conn*) ;
 int fuse_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct fuse_conn *fuse_ctl_file_conn_get(struct file *file)
{
 struct fuse_conn *fc;
 mutex_lock(&fuse_mutex);
 fc = file_inode(file)->i_private;
 if (fc)
  fc = fuse_conn_get(fc);
 mutex_unlock(&fuse_mutex);
 return fc;
}
