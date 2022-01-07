
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;


 int GFP_NOFS ;
 int jfs_err (char*,struct super_block*,unsigned long long,unsigned long long,int) ;
 int jfs_info (char*,struct super_block*,unsigned long long,unsigned long long,int) ;
 int sb_issue_discard (struct super_block*,scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ unlikely (int) ;

void jfs_issue_discard(struct inode *ip, u64 blkno, u64 nblocks)
{
 struct super_block *sb = ip->i_sb;
 int r = 0;

 r = sb_issue_discard(sb, blkno, nblocks, GFP_NOFS, 0);
 if (unlikely(r != 0)) {
  jfs_err("JFS: sb_issue_discard(%p, %llu, %llu, GFP_NOFS, 0) = %d => failed!",
   sb, (unsigned long long)blkno,
   (unsigned long long)nblocks, r);
 }

 jfs_info("JFS: sb_issue_discard(%p, %llu, %llu, GFP_NOFS, 0) = %d",
  sb, (unsigned long long)blkno,
  (unsigned long long)nblocks, r);

 return;
}
