
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct fsync_inode_entry {int list; struct inode* inode; } ;
struct f2fs_sb_info {int sb; } ;
typedef int nid_t ;


 struct fsync_inode_entry* ERR_CAST (struct inode*) ;
 struct fsync_inode_entry* ERR_PTR (int) ;
 int GFP_F2FS_ZERO ;
 scalar_t__ IS_ERR (struct inode*) ;
 int dquot_alloc_inode (struct inode*) ;
 int dquot_initialize (struct inode*) ;
 struct inode* f2fs_iget_retry (int ,int ) ;
 struct fsync_inode_entry* f2fs_kmem_cache_alloc (int ,int ) ;
 int fsync_entry_slab ;
 int iput (struct inode*) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static struct fsync_inode_entry *add_fsync_inode(struct f2fs_sb_info *sbi,
   struct list_head *head, nid_t ino, bool quota_inode)
{
 struct inode *inode;
 struct fsync_inode_entry *entry;
 int err;

 inode = f2fs_iget_retry(sbi->sb, ino);
 if (IS_ERR(inode))
  return ERR_CAST(inode);

 err = dquot_initialize(inode);
 if (err)
  goto err_out;

 if (quota_inode) {
  err = dquot_alloc_inode(inode);
  if (err)
   goto err_out;
 }

 entry = f2fs_kmem_cache_alloc(fsync_entry_slab, GFP_F2FS_ZERO);
 entry->inode = inode;
 list_add_tail(&entry->list, head);

 return entry;
err_out:
 iput(inode);
 return ERR_PTR(err);
}
