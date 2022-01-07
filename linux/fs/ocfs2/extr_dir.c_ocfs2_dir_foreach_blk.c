
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct dir_context {int dummy; } ;
struct TYPE_2__ {int ip_dyn_features; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 int ocfs2_dir_foreach_blk_el (struct inode*,int *,struct dir_context*,int) ;
 int ocfs2_dir_foreach_blk_id (struct inode*,int *,struct dir_context*) ;

__attribute__((used)) static int ocfs2_dir_foreach_blk(struct inode *inode, u64 *f_version,
     struct dir_context *ctx,
     bool persist)
{
 if (OCFS2_I(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL)
  return ocfs2_dir_foreach_blk_id(inode, f_version, ctx);
 return ocfs2_dir_foreach_blk_el(inode, f_version, ctx, persist);
}
