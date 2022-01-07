
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct super_block {int dummy; } ;
struct ocfs2_xattr_bucket {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
typedef int handle_t ;
struct TYPE_5__ {int xh_num_buckets; } ;
struct TYPE_4__ {scalar_t__ s_clustersize; } ;


 int BUG_ON (int) ;
 TYPE_1__* OCFS2_SB (struct super_block*) ;
 scalar_t__ OCFS2_XATTR_BUCKET_SIZE ;
 scalar_t__ bucket_blkno (struct ocfs2_xattr_bucket*) ;
 TYPE_2__* bucket_xh (struct ocfs2_xattr_bucket*) ;
 int le16_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_blocks_per_xattr_bucket (struct super_block*) ;
 int ocfs2_clusters_to_blocks (struct super_block*,int) ;
 int ocfs2_mv_xattr_buckets (struct inode*,int *,scalar_t__,scalar_t__,scalar_t__,int,int*) ;
 int ocfs2_read_xattr_bucket (struct ocfs2_xattr_bucket*,scalar_t__) ;
 int ocfs2_xattr_bucket_relse (struct ocfs2_xattr_bucket*) ;
 int ocfs2_xattr_buckets_per_cluster (TYPE_1__*) ;
 int trace_ocfs2_mv_xattr_bucket_cross_cluster (unsigned long long,unsigned long long) ;

__attribute__((used)) static int ocfs2_mv_xattr_bucket_cross_cluster(struct inode *inode,
            handle_t *handle,
            struct ocfs2_xattr_bucket *first,
            struct ocfs2_xattr_bucket *target,
            u64 new_blkno,
            u32 num_clusters,
            u32 *first_hash)
{
 int ret;
 struct super_block *sb = inode->i_sb;
 int blks_per_bucket = ocfs2_blocks_per_xattr_bucket(sb);
 int num_buckets = ocfs2_xattr_buckets_per_cluster(OCFS2_SB(sb));
 int to_move = num_buckets / 2;
 u64 src_blkno;
 u64 last_cluster_blkno = bucket_blkno(first) +
  ((num_clusters - 1) * ocfs2_clusters_to_blocks(sb, 1));

 BUG_ON(le16_to_cpu(bucket_xh(first)->xh_num_buckets) < num_buckets);
 BUG_ON(OCFS2_XATTR_BUCKET_SIZE == OCFS2_SB(sb)->s_clustersize);

 trace_ocfs2_mv_xattr_bucket_cross_cluster(
    (unsigned long long)last_cluster_blkno,
    (unsigned long long)new_blkno);

 ret = ocfs2_mv_xattr_buckets(inode, handle, bucket_blkno(first),
         last_cluster_blkno, new_blkno,
         to_move, first_hash);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }


 src_blkno = last_cluster_blkno + (to_move * blks_per_bucket);





 if (bucket_blkno(target) >= src_blkno) {

  src_blkno = new_blkno +
   (bucket_blkno(target) - src_blkno);

  ocfs2_xattr_bucket_relse(first);
  ocfs2_xattr_bucket_relse(target);





  ret = ocfs2_read_xattr_bucket(first, new_blkno);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
  ret = ocfs2_read_xattr_bucket(target, src_blkno);
  if (ret)
   mlog_errno(ret);

 }

out:
 return ret;
}
