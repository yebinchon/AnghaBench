
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int loff_t ;


 int FILE ;
 int NFSIOS_VFSFSYNC ;
 int dfprintk (int ,char*,struct file*,int) ;
 struct inode* file_inode (struct file*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int nfs_inc_stats (struct inode*,int ) ;

__attribute__((used)) static int nfs_fsync_dir(struct file *filp, loff_t start, loff_t end,
    int datasync)
{
 struct inode *inode = file_inode(filp);

 dfprintk(FILE, "NFS: fsync dir(%pD2) datasync %d\n", filp, datasync);

 inode_lock(inode);
 nfs_inc_stats(inode, NFSIOS_VFSFSYNC);
 inode_unlock(inode);
 return 0;
}
