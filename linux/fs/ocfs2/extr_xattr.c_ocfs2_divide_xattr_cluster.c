
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct inode {int i_sb; } ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ s_clustersize; } ;


 int BUG_ON (int) ;
 TYPE_1__* OCFS2_SB (int ) ;
 scalar_t__ OCFS2_XATTR_BUCKET_SIZE ;
 int mlog_errno (int) ;
 int ocfs2_blocks_per_xattr_bucket (int ) ;
 int ocfs2_divide_xattr_bucket (struct inode*,int *,int ,int ,int *,int) ;
 int ocfs2_extend_trans (int *,int) ;

__attribute__((used)) static int ocfs2_divide_xattr_cluster(struct inode *inode,
          handle_t *handle,
          u64 prev_blk,
          u64 new_blk,
          u32 *first_hash)
{
 u16 blk_per_bucket = ocfs2_blocks_per_xattr_bucket(inode->i_sb);
 int ret, credits = 2 * blk_per_bucket;

 BUG_ON(OCFS2_XATTR_BUCKET_SIZE < OCFS2_SB(inode->i_sb)->s_clustersize);

 ret = ocfs2_extend_trans(handle, credits);
 if (ret) {
  mlog_errno(ret);
  return ret;
 }


 return ocfs2_divide_xattr_bucket(inode, handle, prev_blk,
       new_blk, first_hash, 1);
}
