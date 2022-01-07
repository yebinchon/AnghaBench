
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_sb; } ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;


 int EROFS ;
 int OCFS2_EXT_UNWRITTEN ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_SB (int ) ;
 int mlog_errno (int) ;
 int ocfs2_change_extent_flag (int *,struct ocfs2_extent_tree*,int ,int ,int ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*,int ,int ) ;
 int ocfs2_error (int ,char*,unsigned long long) ;
 int ocfs2_et_extent_map_truncate (struct ocfs2_extent_tree*,int ) ;
 int ocfs2_writes_unwritten_extents (int ) ;
 int trace_ocfs2_mark_extent_written (unsigned long long,int ,int ,int ) ;

int ocfs2_mark_extent_written(struct inode *inode,
         struct ocfs2_extent_tree *et,
         handle_t *handle, u32 cpos, u32 len, u32 phys,
         struct ocfs2_alloc_context *meta_ac,
         struct ocfs2_cached_dealloc_ctxt *dealloc)
{
 int ret;

 trace_ocfs2_mark_extent_written(
  (unsigned long long)OCFS2_I(inode)->ip_blkno,
  cpos, len, phys);

 if (!ocfs2_writes_unwritten_extents(OCFS2_SB(inode->i_sb))) {
  ocfs2_error(inode->i_sb, "Inode %llu has unwritten extents that are being written to, but the feature bit is not set in the super block\n",
       (unsigned long long)OCFS2_I(inode)->ip_blkno);
  ret = -EROFS;
  goto out;
 }





 ocfs2_et_extent_map_truncate(et, 0);

 ret = ocfs2_change_extent_flag(handle, et, cpos,
           len, phys, meta_ac, dealloc,
           0, OCFS2_EXT_UNWRITTEN);
 if (ret)
  mlog_errno(ret);

out:
 return ret;
}
