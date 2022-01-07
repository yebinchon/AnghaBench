
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int __ocfs2_dx_dir_new_cluster (struct inode*,int ,int *,struct ocfs2_alloc_context*,struct buffer_head**,int,int *) ;
 int mlog_errno (int) ;
 int ocfs2_insert_extent (int *,struct ocfs2_extent_tree*,int ,int ,int,int ,struct ocfs2_alloc_context*) ;

__attribute__((used)) static int ocfs2_dx_dir_new_cluster(struct inode *dir,
        struct ocfs2_extent_tree *et,
        u32 cpos, handle_t *handle,
        struct ocfs2_alloc_context *data_ac,
        struct ocfs2_alloc_context *meta_ac,
        struct buffer_head **dx_leaves,
        int num_dx_leaves)
{
 int ret;
 u64 phys_blkno;

 ret = __ocfs2_dx_dir_new_cluster(dir, cpos, handle, data_ac, dx_leaves,
      num_dx_leaves, &phys_blkno);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_insert_extent(handle, et, cpos, phys_blkno, 1, 0,
      meta_ac);
 if (ret)
  mlog_errno(ret);
out:
 return ret;
}
