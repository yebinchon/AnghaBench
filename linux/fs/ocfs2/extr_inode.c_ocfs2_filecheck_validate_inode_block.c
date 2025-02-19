
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ocfs2_dinode {int i_flags; int i_fs_generation; int i_blkno; int i_signature; int i_check; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
struct TYPE_2__ {unsigned long long fs_generation; } ;


 int BUG_ON (int) ;
 int ML_ERROR ;
 int OCFS2_FILECHECK_ERR_BLOCKECC ;
 int OCFS2_FILECHECK_ERR_BLOCKNO ;
 int OCFS2_FILECHECK_ERR_GENERATION ;
 int OCFS2_FILECHECK_ERR_INVALIDINO ;
 int OCFS2_FILECHECK_ERR_VALIDFLAG ;
 int OCFS2_IS_VALID_DINODE (struct ocfs2_dinode*) ;
 TYPE_1__* OCFS2_SB (struct super_block*) ;
 int OCFS2_VALID_FL ;
 int buffer_uptodate (struct buffer_head*) ;
 int cpu_to_le32 (int ) ;
 unsigned long long le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog (int ,char*,unsigned long long,...) ;
 int ocfs2_validate_meta_ecc (struct super_block*,scalar_t__,int *) ;
 int trace_ocfs2_filecheck_validate_inode_block (unsigned long long) ;

__attribute__((used)) static int ocfs2_filecheck_validate_inode_block(struct super_block *sb,
      struct buffer_head *bh)
{
 int rc = 0;
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)bh->b_data;

 trace_ocfs2_filecheck_validate_inode_block(
  (unsigned long long)bh->b_blocknr);

 BUG_ON(!buffer_uptodate(bh));







 rc = ocfs2_validate_meta_ecc(sb, bh->b_data, &di->i_check);
 if (rc) {
  mlog(ML_ERROR,
       "Filecheck: checksum failed for dinode %llu\n",
       (unsigned long long)bh->b_blocknr);
  rc = -OCFS2_FILECHECK_ERR_BLOCKECC;
 }

 if (!OCFS2_IS_VALID_DINODE(di)) {
  mlog(ML_ERROR,
       "Filecheck: invalid dinode #%llu: signature = %.*s\n",
       (unsigned long long)bh->b_blocknr, 7, di->i_signature);
  rc = -OCFS2_FILECHECK_ERR_INVALIDINO;
  goto bail;
 } else if (rc)
  goto bail;

 if (le64_to_cpu(di->i_blkno) != bh->b_blocknr) {
  mlog(ML_ERROR,
       "Filecheck: invalid dinode #%llu: i_blkno is %llu\n",
       (unsigned long long)bh->b_blocknr,
       (unsigned long long)le64_to_cpu(di->i_blkno));
  rc = -OCFS2_FILECHECK_ERR_BLOCKNO;
  goto bail;
 }

 if (!(di->i_flags & cpu_to_le32(OCFS2_VALID_FL))) {
  mlog(ML_ERROR,
       "Filecheck: invalid dinode #%llu: OCFS2_VALID_FL "
       "not set\n",
       (unsigned long long)bh->b_blocknr);
  rc = -OCFS2_FILECHECK_ERR_VALIDFLAG;
  goto bail;
 }

 if (le32_to_cpu(di->i_fs_generation) !=
     OCFS2_SB(sb)->fs_generation) {
  mlog(ML_ERROR,
       "Filecheck: invalid dinode #%llu: fs_generation is %u\n",
       (unsigned long long)bh->b_blocknr,
       le32_to_cpu(di->i_fs_generation));
  rc = -OCFS2_FILECHECK_ERR_GENERATION;
 }

bail:
 return rc;
}
