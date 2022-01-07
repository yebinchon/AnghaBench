
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_ino; int i_sb; } ;
typedef int handle_t ;
struct TYPE_2__ {int ip_blkno; } ;


 int OCFS2_EXT_REFCOUNTED ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_SB (int ) ;
 int mlog_errno (int) ;
 int ocfs2_change_extent_flag (int *,struct ocfs2_extent_tree*,int ,int ,int ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*,int ,int ) ;
 int ocfs2_error (int ,char*,int ) ;
 int ocfs2_refcount_tree (int ) ;
 int trace_ocfs2_mark_extent_refcounted (int ,int ,int ,int ) ;

__attribute__((used)) static int ocfs2_mark_extent_refcounted(struct inode *inode,
    struct ocfs2_extent_tree *et,
    handle_t *handle, u32 cpos,
    u32 len, u32 phys,
    struct ocfs2_alloc_context *meta_ac,
    struct ocfs2_cached_dealloc_ctxt *dealloc)
{
 int ret;

 trace_ocfs2_mark_extent_refcounted(OCFS2_I(inode)->ip_blkno,
        cpos, len, phys);

 if (!ocfs2_refcount_tree(OCFS2_SB(inode->i_sb))) {
  ret = ocfs2_error(inode->i_sb, "Inode %lu want to use refcount tree, but the feature bit is not set in the super block\n",
      inode->i_ino);
  goto out;
 }

 ret = ocfs2_change_extent_flag(handle, et, cpos,
           len, phys, meta_ac, dealloc,
           OCFS2_EXT_REFCOUNTED, 0);
 if (ret)
  mlog_errno(ret);

out:
 return ret;
}
