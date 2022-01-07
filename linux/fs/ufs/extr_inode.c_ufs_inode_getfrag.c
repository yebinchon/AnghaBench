
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ufs_sb_private_info {unsigned int s_fpb; scalar_t__ s_fpbmask; scalar_t__ s_sbbase; } ;
struct ufs_inode_info {scalar_t__ i_lastfrag; } ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct inode {int i_ctime; struct super_block* i_sb; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;


 int ENOSPC ;
 scalar_t__ IS_SYNC (struct inode*) ;
 struct ufs_inode_info* UFS_I (struct inode*) ;
 scalar_t__ UFS_NDIR_FRAGMENT ;
 TYPE_1__* UFS_SB (struct super_block*) ;
 int current_time (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int ufs_blknum (scalar_t__) ;
 scalar_t__ ufs_data_ptr_to_cpu (struct super_block*,void*) ;
 void* ufs_get_direct_data_ptr (struct ufs_sb_private_info*,struct ufs_inode_info*,unsigned int) ;
 scalar_t__ ufs_new_fragments (struct inode*,void*,int ,scalar_t__,unsigned int,int*,struct page*) ;
 int ufs_sync_inode (struct inode*) ;

__attribute__((used)) static u64
ufs_inode_getfrag(struct inode *inode, unsigned index,
    sector_t new_fragment, int *err,
    int *new, struct page *locked_page)
{
 struct ufs_inode_info *ufsi = UFS_I(inode);
 struct super_block *sb = inode->i_sb;
 struct ufs_sb_private_info *uspi = UFS_SB(sb)->s_uspi;
 u64 tmp, goal, lastfrag;
 unsigned nfrags = uspi->s_fpb;
 void *p;






 p = ufs_get_direct_data_ptr(uspi, ufsi, index);
 tmp = ufs_data_ptr_to_cpu(sb, p);
 if (tmp)
  goto out;

 lastfrag = ufsi->i_lastfrag;


 if (new_fragment < UFS_NDIR_FRAGMENT && new_fragment >= lastfrag)
  nfrags = (new_fragment & uspi->s_fpbmask) + 1;

 goal = 0;
 if (index) {
  goal = ufs_data_ptr_to_cpu(sb,
     ufs_get_direct_data_ptr(uspi, ufsi, index - 1));
  if (goal)
   goal += uspi->s_fpb;
 }
 tmp = ufs_new_fragments(inode, p, ufs_blknum(new_fragment),
    goal, nfrags, err, locked_page);

 if (!tmp) {
  *err = -ENOSPC;
  return 0;
 }

 if (new)
  *new = 1;
 inode->i_ctime = current_time(inode);
 if (IS_SYNC(inode))
  ufs_sync_inode (inode);
 mark_inode_dirty(inode);
out:
 return tmp + uspi->s_sbbase;
}
