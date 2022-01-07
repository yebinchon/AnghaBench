
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_reflink_xattr_tree_args {int new_blk_bh; TYPE_1__* reflink; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {int new_inode; } ;


 int INODE_CACHE (int ) ;
 scalar_t__ IS_ERR (int *) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_init_xattr_tree_extent_tree (struct ocfs2_extent_tree*,int ,int ) ;
 int ocfs2_lock_reflink_xattr_rec_allocators (struct ocfs2_reflink_xattr_tree_args*,struct ocfs2_extent_tree*,scalar_t__,int ,int*,struct ocfs2_alloc_context**,struct ocfs2_alloc_context**) ;
 int ocfs2_reflink_xattr_buckets (int *,struct inode*,struct ocfs2_reflink_xattr_tree_args*,struct ocfs2_extent_tree*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,scalar_t__,int ,int ) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int) ;
 int trace_ocfs2_reflink_xattr_rec (unsigned long long,int ) ;

__attribute__((used)) static int ocfs2_reflink_xattr_rec(struct inode *inode,
       struct buffer_head *root_bh,
       u64 blkno,
       u32 cpos,
       u32 len,
       void *para)
{
 int ret, credits = 0;
 handle_t *handle;
 struct ocfs2_reflink_xattr_tree_args *args =
   (struct ocfs2_reflink_xattr_tree_args *)para;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct ocfs2_alloc_context *meta_ac = ((void*)0);
 struct ocfs2_alloc_context *data_ac = ((void*)0);
 struct ocfs2_extent_tree et;

 trace_ocfs2_reflink_xattr_rec((unsigned long long)blkno, len);

 ocfs2_init_xattr_tree_extent_tree(&et,
       INODE_CACHE(args->reflink->new_inode),
       args->new_blk_bh);

 ret = ocfs2_lock_reflink_xattr_rec_allocators(args, &et, blkno,
            len, &credits,
            &meta_ac, &data_ac);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 handle = ocfs2_start_trans(osb, credits);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_reflink_xattr_buckets(handle, inode, args, &et,
       meta_ac, data_ac,
       blkno, cpos, len);
 if (ret)
  mlog_errno(ret);

 ocfs2_commit_trans(osb, handle);

out:
 if (meta_ac)
  ocfs2_free_alloc_context(meta_ac);
 if (data_ac)
  ocfs2_free_alloc_context(data_ac);
 return ret;
}
