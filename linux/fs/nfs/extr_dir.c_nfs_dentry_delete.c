
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int d_flags; TYPE_1__* d_sb; } ;
struct TYPE_2__ {int s_flags; } ;


 int DCACHE_NFSFS_RENAMED ;
 scalar_t__ NFS_STALE (int ) ;
 int SB_ACTIVE ;
 int VFS ;
 int d_inode (struct dentry const*) ;
 scalar_t__ d_really_is_positive (struct dentry const*) ;
 int dfprintk (int ,char*,struct dentry const*,int) ;

__attribute__((used)) static int nfs_dentry_delete(const struct dentry *dentry)
{
 dfprintk(VFS, "NFS: dentry_delete(%pd2, %x)\n",
  dentry, dentry->d_flags);


 if (d_really_is_positive(dentry) && NFS_STALE(d_inode(dentry)))
  return 1;

 if (dentry->d_flags & DCACHE_NFSFS_RENAMED) {

  return 1;
 }
 if (!(dentry->d_sb->s_flags & SB_ACTIVE)) {


  return 1;
 }
 return 0;

}
