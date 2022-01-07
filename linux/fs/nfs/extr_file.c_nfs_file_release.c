
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int NFSIOS_VFSRELEASE ;
 int dprintk (char*,struct file*) ;
 int nfs_file_clear_open_context (struct file*) ;
 int nfs_inc_stats (struct inode*,int ) ;

int
nfs_file_release(struct inode *inode, struct file *filp)
{
 dprintk("NFS: release(%pD2)\n", filp);

 nfs_inc_stats(inode, NFSIOS_VFSRELEASE);
 nfs_file_clear_open_context(filp);
 return 0;
}
