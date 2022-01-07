
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef unsigned int u32 ;
struct ocfs2_reflink_xattr_tree_args {int old_bucket; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_sb; } ;
typedef int handle_t ;
struct TYPE_2__ {int xh_num_buckets; } ;


 int OCFS2_SB (int ) ;
 TYPE_1__* bucket_xh (int ) ;
 unsigned int le16_to_cpu (int ) ;
 unsigned int min (unsigned int,unsigned int) ;
 int mlog_errno (int) ;
 int ocfs2_claim_clusters (int *,struct ocfs2_alloc_context*,int,unsigned int*,unsigned int*) ;
 scalar_t__ ocfs2_clusters_to_blocks (int ,unsigned int) ;
 int ocfs2_insert_extent (int *,struct ocfs2_extent_tree*,unsigned int,scalar_t__,unsigned int,int ,struct ocfs2_alloc_context*) ;
 int ocfs2_read_xattr_bucket (int ,scalar_t__) ;
 int ocfs2_reflink_xattr_bucket (int *,scalar_t__,scalar_t__,unsigned int,unsigned int*,unsigned int,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,struct ocfs2_reflink_xattr_tree_args*) ;
 int ocfs2_xattr_bucket_relse (int ) ;
 unsigned int ocfs2_xattr_buckets_per_cluster (int ) ;
 int trace_ocfs2_reflink_xattr_buckets (unsigned long long,unsigned int,unsigned int) ;

__attribute__((used)) static int ocfs2_reflink_xattr_buckets(handle_t *handle,
    struct inode *inode,
    struct ocfs2_reflink_xattr_tree_args *args,
    struct ocfs2_extent_tree *et,
    struct ocfs2_alloc_context *meta_ac,
    struct ocfs2_alloc_context *data_ac,
    u64 blkno, u32 cpos, u32 len)
{
 int ret, first_inserted = 0;
 u32 p_cluster, num_clusters, reflink_cpos = 0;
 u64 new_blkno;
 unsigned int num_buckets, reflink_buckets;
 unsigned int bpc =
  ocfs2_xattr_buckets_per_cluster(OCFS2_SB(inode->i_sb));

 ret = ocfs2_read_xattr_bucket(args->old_bucket, blkno);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }
 num_buckets = le16_to_cpu(bucket_xh(args->old_bucket)->xh_num_buckets);
 ocfs2_xattr_bucket_relse(args->old_bucket);

 while (len && num_buckets) {
  ret = ocfs2_claim_clusters(handle, data_ac,
        1, &p_cluster, &num_clusters);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  new_blkno = ocfs2_clusters_to_blocks(inode->i_sb, p_cluster);
  reflink_buckets = min(num_buckets, bpc * num_clusters);

  ret = ocfs2_reflink_xattr_bucket(handle, blkno,
       new_blkno, num_clusters,
       &reflink_cpos, reflink_buckets,
       meta_ac, data_ac, args);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }






  if (!first_inserted) {
   reflink_cpos = cpos;
   first_inserted = 1;
  }
  ret = ocfs2_insert_extent(handle, et, reflink_cpos, new_blkno,
       num_clusters, 0, meta_ac);
  if (ret)
   mlog_errno(ret);

  trace_ocfs2_reflink_xattr_buckets((unsigned long long)new_blkno,
        num_clusters, reflink_cpos);

  len -= num_clusters;
  blkno += ocfs2_clusters_to_blocks(inode->i_sb, num_clusters);
  num_buckets -= reflink_buckets;
 }
out:
 return ret;
}
