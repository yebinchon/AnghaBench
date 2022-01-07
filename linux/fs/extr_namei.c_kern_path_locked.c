
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {int dummy; } ;
struct path {TYPE_1__* dentry; } ;
struct filename {int dummy; } ;
typedef struct filename dentry ;
struct TYPE_2__ {int d_inode; } ;


 int AT_FDCWD ;
 int EINVAL ;
 struct filename* ERR_CAST (struct filename*) ;
 struct filename* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct filename*) ;
 int I_MUTEX_PARENT ;
 int LAST_NORM ;
 struct filename* __lookup_hash (struct qstr*,TYPE_1__*,int ) ;
 struct filename* filename_parentat (int ,int ,int ,struct path*,struct qstr*,int*) ;
 int getname_kernel (char const*) ;
 int inode_lock_nested (int ,int ) ;
 int inode_unlock (int ) ;
 int path_put (struct path*) ;
 int putname (struct filename*) ;
 scalar_t__ unlikely (int) ;

struct dentry *kern_path_locked(const char *name, struct path *path)
{
 struct filename *filename;
 struct dentry *d;
 struct qstr last;
 int type;

 filename = filename_parentat(AT_FDCWD, getname_kernel(name), 0, path,
        &last, &type);
 if (IS_ERR(filename))
  return ERR_CAST(filename);
 if (unlikely(type != LAST_NORM)) {
  path_put(path);
  putname(filename);
  return ERR_PTR(-EINVAL);
 }
 inode_lock_nested(path->dentry->d_inode, I_MUTEX_PARENT);
 d = __lookup_hash(&last, path->dentry, 0);
 if (IS_ERR(d)) {
  inode_unlock(path->dentry->d_inode);
  path_put(path);
 }
 putname(filename);
 return d;
}
