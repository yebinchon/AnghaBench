
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ocfs2_extent_block {int h_fs_generation; int h_blkno; int h_signature; int h_check; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
struct TYPE_2__ {unsigned long long fs_generation; } ;


 int BUG_ON (int) ;
 int ML_ERROR ;
 int OCFS2_IS_VALID_EXTENT_BLOCK (struct ocfs2_extent_block*) ;
 TYPE_1__* OCFS2_SB (struct super_block*) ;
 int buffer_uptodate (struct buffer_head*) ;
 unsigned long long le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog (int ,char*,unsigned long long) ;
 int ocfs2_error (struct super_block*,char*,unsigned long long,unsigned long long,...) ;
 int ocfs2_validate_meta_ecc (struct super_block*,scalar_t__,int *) ;
 int trace_ocfs2_validate_extent_block (unsigned long long) ;

__attribute__((used)) static int ocfs2_validate_extent_block(struct super_block *sb,
           struct buffer_head *bh)
{
 int rc;
 struct ocfs2_extent_block *eb =
  (struct ocfs2_extent_block *)bh->b_data;

 trace_ocfs2_validate_extent_block((unsigned long long)bh->b_blocknr);

 BUG_ON(!buffer_uptodate(bh));






 rc = ocfs2_validate_meta_ecc(sb, bh->b_data, &eb->h_check);
 if (rc) {
  mlog(ML_ERROR, "Checksum failed for extent block %llu\n",
       (unsigned long long)bh->b_blocknr);
  return rc;
 }





 if (!OCFS2_IS_VALID_EXTENT_BLOCK(eb)) {
  rc = ocfs2_error(sb,
     "Extent block #%llu has bad signature %.*s\n",
     (unsigned long long)bh->b_blocknr, 7,
     eb->h_signature);
  goto bail;
 }

 if (le64_to_cpu(eb->h_blkno) != bh->b_blocknr) {
  rc = ocfs2_error(sb,
     "Extent block #%llu has an invalid h_blkno of %llu\n",
     (unsigned long long)bh->b_blocknr,
     (unsigned long long)le64_to_cpu(eb->h_blkno));
  goto bail;
 }

 if (le32_to_cpu(eb->h_fs_generation) != OCFS2_SB(sb)->fs_generation)
  rc = ocfs2_error(sb,
     "Extent block #%llu has an invalid h_fs_generation of #%u\n",
     (unsigned long long)bh->b_blocknr,
     le32_to_cpu(eb->h_fs_generation));
bail:
 return rc;
}
