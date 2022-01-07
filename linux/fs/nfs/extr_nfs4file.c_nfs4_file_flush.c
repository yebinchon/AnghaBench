
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; int f_mapping; } ;
typedef int fl_owner_t ;


 int FMODE_WRITE ;
 int NFSIOS_VFSFLUSH ;
 int dprintk (char*,struct file*) ;
 struct inode* file_inode (struct file*) ;
 int filemap_fdatawrite (int ) ;
 int nfs4_delegation_flush_on_close (struct inode*) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_wb_all (struct inode*) ;

__attribute__((used)) static int
nfs4_file_flush(struct file *file, fl_owner_t id)
{
 struct inode *inode = file_inode(file);

 dprintk("NFS: flush(%pD2)\n", file);

 nfs_inc_stats(inode, NFSIOS_VFSFLUSH);
 if ((file->f_mode & FMODE_WRITE) == 0)
  return 0;





 if (!nfs4_delegation_flush_on_close(inode))
  return filemap_fdatawrite(file->f_mapping);


 return nfs_wb_all(inode);
}
