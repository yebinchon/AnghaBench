
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {scalar_t__ sync_mode; } ;
struct TYPE_2__ {int rpcs_out; int ncommit; } ;
struct nfs_inode {TYPE_1__ commit_info; } ;
struct inode {int i_mapping; } ;


 int FLUSH_SYNC ;
 int I_DIRTY_DATASYNC ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int PAGECACHE_TAG_WRITEBACK ;
 scalar_t__ WB_SYNC_NONE ;
 int __mark_inode_dirty (struct inode*,int ) ;
 int __nfs_commit_inode (struct inode*,int,struct writeback_control*) ;
 scalar_t__ atomic_long_read (int *) ;
 int atomic_read (int *) ;
 scalar_t__ mapping_tagged (int ,int ) ;

int nfs_write_inode(struct inode *inode, struct writeback_control *wbc)
{
 struct nfs_inode *nfsi = NFS_I(inode);
 int flags = FLUSH_SYNC;
 int ret = 0;

 if (wbc->sync_mode == WB_SYNC_NONE) {

  if (!atomic_long_read(&nfsi->commit_info.ncommit))
   goto check_requests_outstanding;




  if (mapping_tagged(inode->i_mapping, PAGECACHE_TAG_WRITEBACK))
   goto out_mark_dirty;


  flags = 0;
 }

 ret = __nfs_commit_inode(inode, flags, wbc);
 if (!ret) {
  if (flags & FLUSH_SYNC)
   return 0;
 } else if (atomic_long_read(&nfsi->commit_info.ncommit))
  goto out_mark_dirty;

check_requests_outstanding:
 if (!atomic_read(&nfsi->commit_info.rpcs_out))
  return ret;
out_mark_dirty:
 __mark_inode_dirty(inode, I_DIRTY_DATASYNC);
 return ret;
}
