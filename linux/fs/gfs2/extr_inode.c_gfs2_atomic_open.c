
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct file {int f_mode; } ;
struct dentry {int dummy; } ;


 int BUG_ON (int ) ;
 int ENOENT ;
 int FMODE_OPENED ;
 scalar_t__ IS_ERR (struct dentry*) ;
 unsigned int O_CREAT ;
 unsigned int O_EXCL ;
 int PTR_ERR (struct dentry*) ;
 int S_IFREG ;
 struct dentry* __gfs2_lookup (struct inode*,struct dentry*,struct file*) ;
 int d_in_lookup (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int dput (struct dentry*) ;
 int finish_no_open (struct file*,struct dentry*) ;
 int gfs2_create_inode (struct inode*,struct dentry*,struct file*,int,int ,int *,int ,int) ;

__attribute__((used)) static int gfs2_atomic_open(struct inode *dir, struct dentry *dentry,
       struct file *file, unsigned flags,
       umode_t mode)
{
 struct dentry *d;
 bool excl = !!(flags & O_EXCL);

 if (!d_in_lookup(dentry))
  goto skip_lookup;

 d = __gfs2_lookup(dir, dentry, file);
 if (IS_ERR(d))
  return PTR_ERR(d);
 if (d != ((void*)0))
  dentry = d;
 if (d_really_is_positive(dentry)) {
  if (!(file->f_mode & FMODE_OPENED))
   return finish_no_open(file, d);
  dput(d);
  return 0;
 }

 BUG_ON(d != ((void*)0));

skip_lookup:
 if (!(flags & O_CREAT))
  return -ENOENT;

 return gfs2_create_inode(dir, dentry, file, S_IFREG | mode, 0, ((void*)0), 0, excl);
}
