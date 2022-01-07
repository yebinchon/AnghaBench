
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ufs_sb_private_info {unsigned int s_fpbshift; unsigned int s_fpbmask; } ;
struct super_block {int dummy; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct buffer_head {int * b_page; } ;
typedef unsigned int sector_t ;
struct TYPE_4__ {unsigned int i_lastfrag; int truncate_mutex; int meta_lock; } ;
struct TYPE_3__ {struct ufs_sb_private_info* s_uspi; } ;


 int EIO ;
 int UFSD (char*,int ,unsigned long long) ;
 TYPE_2__* UFS_I (struct inode*) ;
 unsigned int UFS_NDIR_FRAGMENT ;
 TYPE_1__* UFS_SB (struct super_block*) ;
 int map_bh (struct buffer_head*,struct super_block*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_seqlock_excl (int *) ;
 int read_sequnlock_excl (int *) ;
 int set_buffer_new (struct buffer_head*) ;
 int ufs_block_to_path (struct inode*,unsigned int,unsigned int*) ;
 int ufs_extend_tail (struct inode*,unsigned int,int*,int *) ;
 scalar_t__ ufs_frag_map (struct inode*,unsigned int*,int) ;
 scalar_t__ ufs_inode_getblock (struct inode*,scalar_t__,unsigned int,unsigned int,int*,int*,int *) ;
 scalar_t__ ufs_inode_getfrag (struct inode*,unsigned int,unsigned int,int*,int*,int *) ;
 int ufs_warning (struct super_block*,char*,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ufs_getfrag_block(struct inode *inode, sector_t fragment, struct buffer_head *bh_result, int create)
{
 struct super_block *sb = inode->i_sb;
 struct ufs_sb_private_info *uspi = UFS_SB(sb)->s_uspi;
 int err = 0, new = 0;
 unsigned offsets[4];
 int depth = ufs_block_to_path(inode, fragment >> uspi->s_fpbshift, offsets);
 u64 phys64 = 0;
 unsigned frag = fragment & uspi->s_fpbmask;

 phys64 = ufs_frag_map(inode, offsets, depth);
 if (!create)
  goto done;

 if (phys64) {
  if (fragment >= UFS_NDIR_FRAGMENT)
   goto done;
  read_seqlock_excl(&UFS_I(inode)->meta_lock);
  if (fragment < UFS_I(inode)->i_lastfrag) {
   read_sequnlock_excl(&UFS_I(inode)->meta_lock);
   goto done;
  }
  read_sequnlock_excl(&UFS_I(inode)->meta_lock);
 }


 mutex_lock(&UFS_I(inode)->truncate_mutex);

 UFSD("ENTER, ino %lu, fragment %llu\n", inode->i_ino, (unsigned long long)fragment);
 if (unlikely(!depth)) {
  ufs_warning(sb, "ufs_get_block", "block > big");
  err = -EIO;
  goto out;
 }

 if (UFS_I(inode)->i_lastfrag < UFS_NDIR_FRAGMENT) {
  unsigned lastfrag = UFS_I(inode)->i_lastfrag;
  unsigned tailfrags = lastfrag & uspi->s_fpbmask;
  if (tailfrags && fragment >= lastfrag) {
   if (!ufs_extend_tail(inode, fragment,
          &err, bh_result->b_page))
    goto out;
  }
 }

 if (depth == 1) {
  phys64 = ufs_inode_getfrag(inode, offsets[0], fragment,
        &err, &new, bh_result->b_page);
 } else {
  int i;
  phys64 = ufs_inode_getfrag(inode, offsets[0], fragment,
        &err, ((void*)0), ((void*)0));
  for (i = 1; i < depth - 1; i++)
   phys64 = ufs_inode_getblock(inode, phys64, offsets[i],
      fragment, &err, ((void*)0), ((void*)0));
  phys64 = ufs_inode_getblock(inode, phys64, offsets[depth - 1],
     fragment, &err, &new, bh_result->b_page);
 }
out:
 if (phys64) {
  phys64 += frag;
  map_bh(bh_result, sb, phys64);
  if (new)
   set_buffer_new(bh_result);
 }
 mutex_unlock(&UFS_I(inode)->truncate_mutex);
 return err;

done:
 if (phys64)
  map_bh(bh_result, sb, phys64 + frag);
 return 0;
}
