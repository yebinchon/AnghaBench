
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct super_block {int s_blocksize; } ;
struct ocfs2_xattr_value_buf {int vb_access; } ;
struct ocfs2_reflink_xattr_tree_args {TYPE_3__* new_bucket; TYPE_3__* old_bucket; TYPE_6__* reflink; } ;
struct ocfs2_alloc_context {int dummy; } ;
typedef int handle_t ;
struct TYPE_18__ {int xh_num_buckets; TYPE_2__* xh_entries; } ;
struct TYPE_17__ {TYPE_1__* old_inode; } ;
struct TYPE_16__ {int bu_blocks; int * bu_bhs; } ;
struct TYPE_15__ {int xe_name_hash; } ;
struct TYPE_14__ {struct super_block* i_sb; } ;


 int OCFS2_JOURNAL_ACCESS_CREATE ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int bucket_block (TYPE_3__*,int) ;
 TYPE_7__* bucket_xh (TYPE_3__*) ;
 int cpu_to_le16 (int) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,int ) ;
 int mlog_errno (int) ;
 int ocfs2_get_reflink_xattr_value_root ;
 int ocfs2_init_xattr_bucket (TYPE_3__*,int,int) ;
 int ocfs2_journal_access ;
 int ocfs2_read_xattr_bucket (TYPE_3__*,int) ;
 int ocfs2_reflink_xattr_header (int *,TYPE_6__*,int ,TYPE_7__*,int ,TYPE_7__*,struct ocfs2_xattr_value_buf*,struct ocfs2_alloc_context*,int ,struct ocfs2_reflink_xattr_tree_args*) ;
 int ocfs2_xattr_bucket_journal_access (int *,TYPE_3__*,int ) ;
 int ocfs2_xattr_bucket_journal_dirty (int *,TYPE_3__*) ;
 int ocfs2_xattr_bucket_relse (TYPE_3__*) ;

__attribute__((used)) static int ocfs2_reflink_xattr_bucket(handle_t *handle,
    u64 blkno, u64 new_blkno, u32 clusters,
    u32 *cpos, int num_buckets,
    struct ocfs2_alloc_context *meta_ac,
    struct ocfs2_alloc_context *data_ac,
    struct ocfs2_reflink_xattr_tree_args *args)
{
 int i, j, ret = 0;
 struct super_block *sb = args->reflink->old_inode->i_sb;
 int bpb = args->old_bucket->bu_blocks;
 struct ocfs2_xattr_value_buf vb = {
  .vb_access = ocfs2_journal_access,
 };

 for (i = 0; i < num_buckets; i++, blkno += bpb, new_blkno += bpb) {
  ret = ocfs2_read_xattr_bucket(args->old_bucket, blkno);
  if (ret) {
   mlog_errno(ret);
   break;
  }

  ret = ocfs2_init_xattr_bucket(args->new_bucket, new_blkno, 1);
  if (ret) {
   mlog_errno(ret);
   break;
  }

  ret = ocfs2_xattr_bucket_journal_access(handle,
      args->new_bucket,
      OCFS2_JOURNAL_ACCESS_CREATE);
  if (ret) {
   mlog_errno(ret);
   break;
  }

  for (j = 0; j < bpb; j++)
   memcpy(bucket_block(args->new_bucket, j),
          bucket_block(args->old_bucket, j),
          sb->s_blocksize);






  if (i == 0) {
   *cpos = le32_to_cpu(bucket_xh(args->new_bucket)->
         xh_entries[0].xe_name_hash);
   bucket_xh(args->new_bucket)->xh_num_buckets =
    cpu_to_le16(num_buckets);
  }

  ocfs2_xattr_bucket_journal_dirty(handle, args->new_bucket);

  ret = ocfs2_reflink_xattr_header(handle, args->reflink,
     args->old_bucket->bu_bhs[0],
     bucket_xh(args->old_bucket),
     args->new_bucket->bu_bhs[0],
     bucket_xh(args->new_bucket),
     &vb, meta_ac,
     ocfs2_get_reflink_xattr_value_root,
     args);
  if (ret) {
   mlog_errno(ret);
   break;
  }






  ret = ocfs2_xattr_bucket_journal_access(handle,
      args->new_bucket,
      OCFS2_JOURNAL_ACCESS_WRITE);
  if (ret) {
   mlog_errno(ret);
   break;
  }

  ocfs2_xattr_bucket_journal_dirty(handle, args->new_bucket);

  ocfs2_xattr_bucket_relse(args->old_bucket);
  ocfs2_xattr_bucket_relse(args->new_bucket);
 }

 ocfs2_xattr_bucket_relse(args->old_bucket);
 ocfs2_xattr_bucket_relse(args->new_bucket);
 return ret;
}
