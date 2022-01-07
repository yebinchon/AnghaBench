
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mapping; } ;


 int FLUSH_SYNC ;
 int filemap_write_and_wait (int ) ;
 int nfs_commit_inode (struct inode*,int ) ;
 int pnfs_sync_inode (struct inode*,int) ;
 int trace_nfs_writeback_inode_enter (struct inode*) ;
 int trace_nfs_writeback_inode_exit (struct inode*,int) ;

int nfs_wb_all(struct inode *inode)
{
 int ret;

 trace_nfs_writeback_inode_enter(inode);

 ret = filemap_write_and_wait(inode->i_mapping);
 if (ret)
  goto out;
 ret = nfs_commit_inode(inode, FLUSH_SYNC);
 if (ret < 0)
  goto out;
 pnfs_sync_inode(inode, 1);
 ret = 0;

out:
 trace_nfs_writeback_inode_exit(inode, ret);
 return ret;
}
