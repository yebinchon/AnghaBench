
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {size_t len; scalar_t__* name; } ;
struct path {int mnt; TYPE_1__* dentry; } ;
struct inode {int dummy; } ;
struct filename {struct inode* d_inode; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int d_inode; } ;


 int EISDIR ;
 int ENOENT ;
 int ENOTDIR ;
 scalar_t__ IS_ERR (struct filename*) ;
 int I_MUTEX_PARENT ;
 int LAST_NORM ;
 unsigned int LOOKUP_REVAL ;
 long PTR_ERR (struct filename*) ;
 struct filename* __lookup_hash (struct qstr*,TYPE_1__*,unsigned int) ;
 int break_deleg_wait (struct inode**) ;
 scalar_t__ d_is_dir (struct filename*) ;
 scalar_t__ d_is_negative (struct filename*) ;
 int dput (struct filename*) ;
 struct filename* filename_parentat (int,struct filename*,unsigned int,struct path*,struct qstr*,int*) ;
 int ihold (struct inode*) ;
 int inode_lock_nested (int ,int ) ;
 int inode_unlock (int ) ;
 int iput (struct inode*) ;
 int mnt_drop_write (int ) ;
 int mnt_want_write (int ) ;
 int path_put (struct path*) ;
 int putname (struct filename*) ;
 scalar_t__ retry_estale (int,unsigned int) ;
 int security_path_unlink (struct path*,struct filename*) ;
 int vfs_unlink (int ,struct filename*,struct inode**) ;

long do_unlinkat(int dfd, struct filename *name)
{
 int error;
 struct dentry *dentry;
 struct path path;
 struct qstr last;
 int type;
 struct inode *inode = ((void*)0);
 struct inode *delegated_inode = ((void*)0);
 unsigned int lookup_flags = 0;
retry:
 name = filename_parentat(dfd, name, lookup_flags, &path, &last, &type);
 if (IS_ERR(name))
  return PTR_ERR(name);

 error = -EISDIR;
 if (type != LAST_NORM)
  goto exit1;

 error = mnt_want_write(path.mnt);
 if (error)
  goto exit1;
retry_deleg:
 inode_lock_nested(path.dentry->d_inode, I_MUTEX_PARENT);
 dentry = __lookup_hash(&last, path.dentry, lookup_flags);
 error = PTR_ERR(dentry);
 if (!IS_ERR(dentry)) {

  if (last.name[last.len])
   goto slashes;
  inode = dentry->d_inode;
  if (d_is_negative(dentry))
   goto slashes;
  ihold(inode);
  error = security_path_unlink(&path, dentry);
  if (error)
   goto exit2;
  error = vfs_unlink(path.dentry->d_inode, dentry, &delegated_inode);
exit2:
  dput(dentry);
 }
 inode_unlock(path.dentry->d_inode);
 if (inode)
  iput(inode);
 inode = ((void*)0);
 if (delegated_inode) {
  error = break_deleg_wait(&delegated_inode);
  if (!error)
   goto retry_deleg;
 }
 mnt_drop_write(path.mnt);
exit1:
 path_put(&path);
 if (retry_estale(error, lookup_flags)) {
  lookup_flags |= LOOKUP_REVAL;
  inode = ((void*)0);
  goto retry;
 }
 putname(name);
 return error;

slashes:
 if (d_is_negative(dentry))
  error = -ENOENT;
 else if (d_is_dir(dentry))
  error = -EISDIR;
 else
  error = -ENOTDIR;
 goto exit2;
}
