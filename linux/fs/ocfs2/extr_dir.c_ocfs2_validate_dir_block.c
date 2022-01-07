
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ocfs2_dir_block_trailer {int db_check; } ;
struct buffer_head {scalar_t__ b_blocknr; int b_data; } ;


 int BUG_ON (int) ;
 int ML_ERROR ;
 int buffer_uptodate (struct buffer_head*) ;
 int mlog (int ,char*,unsigned long long) ;
 struct ocfs2_dir_block_trailer* ocfs2_trailer_from_bh (struct buffer_head*,struct super_block*) ;
 int ocfs2_validate_meta_ecc (struct super_block*,int ,int *) ;
 int trace_ocfs2_validate_dir_block (unsigned long long) ;

__attribute__((used)) static int ocfs2_validate_dir_block(struct super_block *sb,
        struct buffer_head *bh)
{
 int rc;
 struct ocfs2_dir_block_trailer *trailer =
  ocfs2_trailer_from_bh(bh, sb);






 trace_ocfs2_validate_dir_block((unsigned long long)bh->b_blocknr);

 BUG_ON(!buffer_uptodate(bh));
 rc = ocfs2_validate_meta_ecc(sb, bh->b_data, &trailer->db_check);
 if (rc)
  mlog(ML_ERROR, "Checksum failed for dinode %llu\n",
       (unsigned long long)bh->b_blocknr);

 return rc;
}
