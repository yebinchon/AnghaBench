
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_flags; } ;


 int NFSIOS_VFSOPEN ;
 int dprintk (char*,struct file*) ;
 int nfs_check_flags (int ) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_open (struct inode*,struct file*) ;

__attribute__((used)) static int
nfs_file_open(struct inode *inode, struct file *filp)
{
 int res;

 dprintk("NFS: open file(%pD2)\n", filp);

 nfs_inc_stats(inode, NFSIOS_VFSOPEN);
 res = nfs_check_flags(filp->f_flags);
 if (res)
  return res;

 res = nfs_open(inode, filp);
 return res;
}
