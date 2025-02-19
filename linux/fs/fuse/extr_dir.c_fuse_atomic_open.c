
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct fuse_conn {int no_create; } ;
struct file {int f_mode; } ;
struct dentry {int dummy; } ;


 int ENOSYS ;
 int FMODE_CREATED ;
 scalar_t__ IS_ERR (struct dentry*) ;
 unsigned int O_CREAT ;
 int PTR_ERR (struct dentry*) ;
 scalar_t__ d_in_lookup (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int dput (struct dentry*) ;
 int finish_no_open (struct file*,struct dentry*) ;
 int fuse_create_open (struct inode*,struct dentry*,struct file*,unsigned int,int ) ;
 struct dentry* fuse_lookup (struct inode*,struct dentry*,int ) ;
 int fuse_mknod (struct inode*,struct dentry*,int ,int ) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;

__attribute__((used)) static int fuse_atomic_open(struct inode *dir, struct dentry *entry,
       struct file *file, unsigned flags,
       umode_t mode)
{
 int err;
 struct fuse_conn *fc = get_fuse_conn(dir);
 struct dentry *res = ((void*)0);

 if (d_in_lookup(entry)) {
  res = fuse_lookup(dir, entry, 0);
  if (IS_ERR(res))
   return PTR_ERR(res);

  if (res)
   entry = res;
 }

 if (!(flags & O_CREAT) || d_really_is_positive(entry))
  goto no_open;


 file->f_mode |= FMODE_CREATED;

 if (fc->no_create)
  goto mknod;

 err = fuse_create_open(dir, entry, file, flags, mode);
 if (err == -ENOSYS) {
  fc->no_create = 1;
  goto mknod;
 }
out_dput:
 dput(res);
 return err;

mknod:
 err = fuse_mknod(dir, entry, mode, 0);
 if (err)
  goto out_dput;
no_open:
 return finish_no_open(file, res);
}
