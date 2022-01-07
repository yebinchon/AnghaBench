
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jfs_inode_info {scalar_t__ fileset; int active_ag; int ag_lock; int anon_inode_list; } ;
struct inode {int i_sb; int i_data; int i_nlink; } ;
struct bmap {int * db_active; } ;
struct TYPE_2__ {struct bmap* bmap; } ;


 int BUG_ON (int) ;
 int COMMIT_Freewmap ;
 scalar_t__ FILESYSTEM_I ;
 struct jfs_inode_info* JFS_IP (struct inode*) ;
 TYPE_1__* JFS_SBI (int ) ;
 int atomic_dec (int *) ;
 int clear_inode (struct inode*) ;
 int diFree (struct inode*) ;
 int dquot_drop (struct inode*) ;
 int dquot_free_inode (struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int is_bad_inode (struct inode*) ;
 int jfs_free_zero_link (struct inode*) ;
 int jfs_info (char*,struct inode*) ;
 int list_empty (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_cflag (int ,struct inode*) ;
 int truncate_inode_pages_final (int *) ;

void jfs_evict_inode(struct inode *inode)
{
 struct jfs_inode_info *ji = JFS_IP(inode);

 jfs_info("In jfs_evict_inode, inode = 0x%p", inode);

 if (!inode->i_nlink && !is_bad_inode(inode)) {
  dquot_initialize(inode);

  if (JFS_IP(inode)->fileset == FILESYSTEM_I) {
   truncate_inode_pages_final(&inode->i_data);

   if (test_cflag(COMMIT_Freewmap, inode))
    jfs_free_zero_link(inode);

   diFree(inode);




   dquot_free_inode(inode);
  }
 } else {
  truncate_inode_pages_final(&inode->i_data);
 }
 clear_inode(inode);
 dquot_drop(inode);

 BUG_ON(!list_empty(&ji->anon_inode_list));

 spin_lock_irq(&ji->ag_lock);
 if (ji->active_ag != -1) {
  struct bmap *bmap = JFS_SBI(inode->i_sb)->bmap;
  atomic_dec(&bmap->db_active[ji->active_ag]);
  ji->active_ag = -1;
 }
 spin_unlock_irq(&ji->ag_lock);
}
