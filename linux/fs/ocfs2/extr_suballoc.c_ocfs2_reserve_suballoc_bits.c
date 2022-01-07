
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {int bg_extends; } ;
struct ocfs2_super {TYPE_1__ alloc_stats; } ;
struct TYPE_5__ {int i_used; int i_total; } ;
struct TYPE_6__ {TYPE_2__ bitmap1; } ;
struct ocfs2_dinode {int i_flags; TYPE_3__ id1; int i_blkno; } ;
struct ocfs2_alloc_context {scalar_t__ ac_bits_wanted; struct buffer_head* ac_bh; int ac_max_block; scalar_t__ ac_alloc_slot; struct inode* ac_inode; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int ALLOC_NEW_GROUP ;
 int BUG_ON (int) ;
 int EINVAL ;
 int ENOSPC ;
 int OCFS2_CHAIN_FL ;
 int OCFS2_IS_VALID_DINODE (struct ocfs2_dinode*) ;
 int atomic_inc (int *) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le32 (int ) ;
 int get_bh (struct buffer_head*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int iput (struct inode*) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_block_group_alloc (struct ocfs2_super*,struct inode*,struct buffer_head*,int ,int *,int) ;
 int ocfs2_error (int ,char*,unsigned long long) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int,scalar_t__) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 scalar_t__ ocfs2_is_cluster_bitmap (struct inode*) ;
 int trace_ocfs2_reserve_suballoc_bits_no_new_group (scalar_t__,scalar_t__,scalar_t__) ;
 int trace_ocfs2_reserve_suballoc_bits_nospc (scalar_t__,scalar_t__) ;

__attribute__((used)) static int ocfs2_reserve_suballoc_bits(struct ocfs2_super *osb,
           struct ocfs2_alloc_context *ac,
           int type,
           u32 slot,
           u64 *last_alloc_group,
           int flags)
{
 int status;
 u32 bits_wanted = ac->ac_bits_wanted;
 struct inode *alloc_inode;
 struct buffer_head *bh = ((void*)0);
 struct ocfs2_dinode *fe;
 u32 free_bits;

 alloc_inode = ocfs2_get_system_file_inode(osb, type, slot);
 if (!alloc_inode) {
  mlog_errno(-EINVAL);
  return -EINVAL;
 }

 inode_lock(alloc_inode);

 status = ocfs2_inode_lock(alloc_inode, &bh, 1);
 if (status < 0) {
  inode_unlock(alloc_inode);
  iput(alloc_inode);

  mlog_errno(status);
  return status;
 }

 ac->ac_inode = alloc_inode;
 ac->ac_alloc_slot = slot;

 fe = (struct ocfs2_dinode *) bh->b_data;



 BUG_ON(!OCFS2_IS_VALID_DINODE(fe));

 if (!(fe->i_flags & cpu_to_le32(OCFS2_CHAIN_FL))) {
  status = ocfs2_error(alloc_inode->i_sb,
         "Invalid chain allocator %llu\n",
         (unsigned long long)le64_to_cpu(fe->i_blkno));
  goto bail;
 }

 free_bits = le32_to_cpu(fe->id1.bitmap1.i_total) -
  le32_to_cpu(fe->id1.bitmap1.i_used);

 if (bits_wanted > free_bits) {

  if (ocfs2_is_cluster_bitmap(alloc_inode)) {
   trace_ocfs2_reserve_suballoc_bits_nospc(bits_wanted,
        free_bits);
   status = -ENOSPC;
   goto bail;
  }

  if (!(flags & ALLOC_NEW_GROUP)) {
   trace_ocfs2_reserve_suballoc_bits_no_new_group(
      slot, bits_wanted, free_bits);
   status = -ENOSPC;
   goto bail;
  }

  status = ocfs2_block_group_alloc(osb, alloc_inode, bh,
       ac->ac_max_block,
       last_alloc_group, flags);
  if (status < 0) {
   if (status != -ENOSPC)
    mlog_errno(status);
   goto bail;
  }
  atomic_inc(&osb->alloc_stats.bg_extends);


  BUG_ON(bits_wanted >
         (le32_to_cpu(fe->id1.bitmap1.i_total)
   - le32_to_cpu(fe->id1.bitmap1.i_used)));
 }

 get_bh(bh);
 ac->ac_bh = bh;
bail:
 brelse(bh);

 if (status)
  mlog_errno(status);
 return status;
}
