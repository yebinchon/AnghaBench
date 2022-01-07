
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EINVAL ;
 unsigned int RENAME_EXCHANGE ;
 unsigned int RENAME_NOREPLACE ;
 int gfs2_exchange (struct inode*,struct dentry*,struct inode*,struct dentry*,unsigned int) ;
 int gfs2_rename (struct inode*,struct dentry*,struct inode*,struct dentry*) ;

__attribute__((used)) static int gfs2_rename2(struct inode *odir, struct dentry *odentry,
   struct inode *ndir, struct dentry *ndentry,
   unsigned int flags)
{
 flags &= ~RENAME_NOREPLACE;

 if (flags & ~RENAME_EXCHANGE)
  return -EINVAL;

 if (flags & RENAME_EXCHANGE)
  return gfs2_exchange(odir, odentry, ndir, ndentry, flags);

 return gfs2_rename(odir, odentry, ndir, ndentry);
}
