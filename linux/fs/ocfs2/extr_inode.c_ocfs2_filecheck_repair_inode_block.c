
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ocfs2_dinode {int i_flags; int i_fs_generation; int i_check; int i_blkno; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
struct TYPE_4__ {int fs_generation; } ;


 int ML_ERROR ;
 int OCFS2_FILECHECK_ERR_INJBD ;
 int OCFS2_FILECHECK_ERR_INVALIDINO ;
 int OCFS2_FILECHECK_ERR_READONLY ;
 int OCFS2_FILECHECK_ERR_VALIDFLAG ;
 int OCFS2_IS_VALID_DINODE (struct ocfs2_dinode*) ;
 TYPE_1__* OCFS2_SB (struct super_block*) ;
 int OCFS2_VALID_FL ;
 scalar_t__ buffer_jbd (struct buffer_head*) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (scalar_t__) ;
 int le32_to_cpu (int) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int mlog (int ,char*,unsigned long long,...) ;
 int ocfs2_compute_meta_ecc (struct super_block*,scalar_t__,int *) ;
 int ocfs2_filecheck_validate_inode_block (struct super_block*,struct buffer_head*) ;
 scalar_t__ ocfs2_is_hard_readonly (TYPE_1__*) ;
 scalar_t__ ocfs2_is_soft_readonly (TYPE_1__*) ;
 scalar_t__ ocfs2_validate_meta_ecc (struct super_block*,scalar_t__,int *) ;
 int trace_ocfs2_filecheck_repair_inode_block (unsigned long long) ;

__attribute__((used)) static int ocfs2_filecheck_repair_inode_block(struct super_block *sb,
           struct buffer_head *bh)
{
 int changed = 0;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)bh->b_data;

 if (!ocfs2_filecheck_validate_inode_block(sb, bh))
  return 0;

 trace_ocfs2_filecheck_repair_inode_block(
  (unsigned long long)bh->b_blocknr);

 if (ocfs2_is_hard_readonly(OCFS2_SB(sb)) ||
     ocfs2_is_soft_readonly(OCFS2_SB(sb))) {
  mlog(ML_ERROR,
       "Filecheck: cannot repair dinode #%llu "
       "on readonly filesystem\n",
       (unsigned long long)bh->b_blocknr);
  return -OCFS2_FILECHECK_ERR_READONLY;
 }

 if (buffer_jbd(bh)) {
  mlog(ML_ERROR,
       "Filecheck: cannot repair dinode #%llu, "
       "its buffer is in jbd\n",
       (unsigned long long)bh->b_blocknr);
  return -OCFS2_FILECHECK_ERR_INJBD;
 }

 if (!OCFS2_IS_VALID_DINODE(di)) {

  return -OCFS2_FILECHECK_ERR_INVALIDINO;
 }

 if (!(di->i_flags & cpu_to_le32(OCFS2_VALID_FL))) {



  return -OCFS2_FILECHECK_ERR_VALIDFLAG;
 }

 if (le64_to_cpu(di->i_blkno) != bh->b_blocknr) {
  di->i_blkno = cpu_to_le64(bh->b_blocknr);
  changed = 1;
  mlog(ML_ERROR,
       "Filecheck: reset dinode #%llu: i_blkno to %llu\n",
       (unsigned long long)bh->b_blocknr,
       (unsigned long long)le64_to_cpu(di->i_blkno));
 }

 if (le32_to_cpu(di->i_fs_generation) !=
     OCFS2_SB(sb)->fs_generation) {
  di->i_fs_generation = cpu_to_le32(OCFS2_SB(sb)->fs_generation);
  changed = 1;
  mlog(ML_ERROR,
       "Filecheck: reset dinode #%llu: fs_generation to %u\n",
       (unsigned long long)bh->b_blocknr,
       le32_to_cpu(di->i_fs_generation));
 }

 if (changed || ocfs2_validate_meta_ecc(sb, bh->b_data, &di->i_check)) {
  ocfs2_compute_meta_ecc(sb, bh->b_data, &di->i_check);
  mark_buffer_dirty(bh);
  mlog(ML_ERROR,
       "Filecheck: reset dinode #%llu: compute meta ecc\n",
       (unsigned long long)bh->b_blocknr);
 }

 return 0;
}
