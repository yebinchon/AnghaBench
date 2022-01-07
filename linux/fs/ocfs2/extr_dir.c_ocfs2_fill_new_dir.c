
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {int ip_dyn_features; } ;


 int BUG_ON (int) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 int ocfs2_fill_new_dir_dx (struct ocfs2_super*,int *,struct inode*,struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*) ;
 int ocfs2_fill_new_dir_el (struct ocfs2_super*,int *,struct inode*,struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,int *) ;
 int ocfs2_fill_new_dir_id (struct ocfs2_super*,int *,struct inode*,struct inode*,struct buffer_head*) ;
 scalar_t__ ocfs2_supports_indexed_dirs (struct ocfs2_super*) ;
 int ocfs2_supports_inline_data (struct ocfs2_super*) ;

int ocfs2_fill_new_dir(struct ocfs2_super *osb,
         handle_t *handle,
         struct inode *parent,
         struct inode *inode,
         struct buffer_head *fe_bh,
         struct ocfs2_alloc_context *data_ac,
         struct ocfs2_alloc_context *meta_ac)

{
 BUG_ON(!ocfs2_supports_inline_data(osb) && data_ac == ((void*)0));

 if (OCFS2_I(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL)
  return ocfs2_fill_new_dir_id(osb, handle, parent, inode, fe_bh);

 if (ocfs2_supports_indexed_dirs(osb))
  return ocfs2_fill_new_dir_dx(osb, handle, parent, inode, fe_bh,
          data_ac, meta_ac);

 return ocfs2_fill_new_dir_el(osb, handle, parent, inode, fe_bh,
         data_ac, ((void*)0));
}
