
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {size_t len; scalar_t__* name; } ;
struct path {int mnt; TYPE_1__* dentry; } ;
struct filename {int dummy; } ;
typedef struct filename dentry ;
struct TYPE_2__ {int d_inode; } ;


 int EEXIST ;
 int ENOENT ;
 struct filename* ERR_CAST (struct filename*) ;
 struct filename* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct filename*) ;
 int I_MUTEX_PARENT ;
 int LAST_NORM ;
 unsigned int LOOKUP_CREATE ;
 unsigned int LOOKUP_DIRECTORY ;
 unsigned int LOOKUP_EXCL ;
 unsigned int LOOKUP_REVAL ;
 struct filename* __lookup_hash (struct qstr*,TYPE_1__*,unsigned int) ;
 scalar_t__ d_is_positive (struct filename*) ;
 int dput (struct filename*) ;
 struct filename* filename_parentat (int,struct filename*,unsigned int,struct path*,struct qstr*,int*) ;
 int inode_lock_nested (int ,int ) ;
 int inode_unlock (int ) ;
 int mnt_drop_write (int ) ;
 int mnt_want_write (int ) ;
 int path_put (struct path*) ;
 int putname (struct filename*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct dentry *filename_create(int dfd, struct filename *name,
    struct path *path, unsigned int lookup_flags)
{
 struct dentry *dentry = ERR_PTR(-EEXIST);
 struct qstr last;
 int type;
 int err2;
 int error;
 bool is_dir = (lookup_flags & LOOKUP_DIRECTORY);





 lookup_flags &= LOOKUP_REVAL;

 name = filename_parentat(dfd, name, lookup_flags, path, &last, &type);
 if (IS_ERR(name))
  return ERR_CAST(name);





 if (unlikely(type != LAST_NORM))
  goto out;


 err2 = mnt_want_write(path->mnt);



 lookup_flags |= LOOKUP_CREATE | LOOKUP_EXCL;
 inode_lock_nested(path->dentry->d_inode, I_MUTEX_PARENT);
 dentry = __lookup_hash(&last, path->dentry, lookup_flags);
 if (IS_ERR(dentry))
  goto unlock;

 error = -EEXIST;
 if (d_is_positive(dentry))
  goto fail;







 if (unlikely(!is_dir && last.name[last.len])) {
  error = -ENOENT;
  goto fail;
 }
 if (unlikely(err2)) {
  error = err2;
  goto fail;
 }
 putname(name);
 return dentry;
fail:
 dput(dentry);
 dentry = ERR_PTR(error);
unlock:
 inode_unlock(path->dentry->d_inode);
 if (!err2)
  mnt_drop_write(path->mnt);
out:
 path_put(path);
 putname(name);
 return dentry;
}
