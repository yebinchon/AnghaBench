
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct ocfs2_super {int max_slots; } ;
struct ocfs2_dinode {int i_suballoc_loc; int i_suballoc_bit; int i_suballoc_slot; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int EINVAL ;
 int ML_ERROR ;
 scalar_t__ OCFS2_INVALID_SLOT ;
 int OCFS2_IS_VALID_DINODE (struct ocfs2_dinode*) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog (int ,char*,unsigned long long,...) ;
 int mlog_errno (int) ;
 int ocfs2_read_blocks_sync (struct ocfs2_super*,scalar_t__,int,struct buffer_head**) ;
 int trace_ocfs2_get_suballoc_slot_bit (unsigned long long) ;

__attribute__((used)) static int ocfs2_get_suballoc_slot_bit(struct ocfs2_super *osb, u64 blkno,
           u16 *suballoc_slot, u64 *group_blkno,
           u16 *suballoc_bit)
{
 int status;
 struct buffer_head *inode_bh = ((void*)0);
 struct ocfs2_dinode *inode_fe;

 trace_ocfs2_get_suballoc_slot_bit((unsigned long long)blkno);


 status = ocfs2_read_blocks_sync(osb, blkno, 1, &inode_bh);
 if (status < 0) {
  mlog(ML_ERROR, "read block %llu failed %d\n",
       (unsigned long long)blkno, status);
  goto bail;
 }

 inode_fe = (struct ocfs2_dinode *) inode_bh->b_data;
 if (!OCFS2_IS_VALID_DINODE(inode_fe)) {
  mlog(ML_ERROR, "invalid inode %llu requested\n",
       (unsigned long long)blkno);
  status = -EINVAL;
  goto bail;
 }

 if (le16_to_cpu(inode_fe->i_suballoc_slot) != (u16)OCFS2_INVALID_SLOT &&
     (u32)le16_to_cpu(inode_fe->i_suballoc_slot) > osb->max_slots - 1) {
  mlog(ML_ERROR, "inode %llu has invalid suballoc slot %u\n",
       (unsigned long long)blkno,
       (u32)le16_to_cpu(inode_fe->i_suballoc_slot));
  status = -EINVAL;
  goto bail;
 }

 if (suballoc_slot)
  *suballoc_slot = le16_to_cpu(inode_fe->i_suballoc_slot);
 if (suballoc_bit)
  *suballoc_bit = le16_to_cpu(inode_fe->i_suballoc_bit);
 if (group_blkno)
  *group_blkno = le64_to_cpu(inode_fe->i_suballoc_loc);

bail:
 brelse(inode_bh);

 if (status)
  mlog_errno(status);
 return status;
}
