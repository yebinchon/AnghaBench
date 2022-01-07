
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ocfs2_xattr_value_buf {int (* vb_access ) (int *,int ,TYPE_5__*,int ) ;TYPE_5__* vb_bh; } ;
struct ocfs2_xattr_reflink {TYPE_5__* new_bh; int new_inode; TYPE_4__* old_bh; int ref_root_bh; TYPE_1__* old_inode; } ;
struct ocfs2_xattr_header {int dummy; } ;
struct ocfs2_super {TYPE_2__* sb; } ;
struct ocfs2_inode_info {int ip_dyn_features; int ip_lock; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {int l_count; } ;
struct TYPE_10__ {struct ocfs2_extent_list i_list; } ;
struct ocfs2_dinode {void* i_dyn_features; TYPE_3__ id2; void* i_xattr_inline_size; } ;
struct ocfs2_alloc_context {int dummy; } ;
typedef int handle_t ;
struct TYPE_12__ {scalar_t__ b_data; } ;
struct TYPE_11__ {scalar_t__ b_data; } ;
struct TYPE_9__ {int s_blocksize; } ;
struct TYPE_8__ {int i_sb; } ;


 int INODE_CACHE (int ) ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_HAS_XATTR_FL ;
 struct ocfs2_inode_info* OCFS2_I (int ) ;
 int OCFS2_INLINE_DATA_FL ;
 int OCFS2_INLINE_XATTR_FL ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 void* cpu_to_le16 (int) ;
 int le16_add_cpu (int *,int) ;
 int le16_to_cpu (void*) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_get_xattr_value_root ;
 int ocfs2_inode_is_fast_symlink (int ) ;
 int ocfs2_journal_access_di (int *,int ,TYPE_5__*,int ) ;
 int ocfs2_journal_dirty (int *,TYPE_5__*) ;
 int ocfs2_reflink_lock_xattr_allocators (struct ocfs2_super*,struct ocfs2_xattr_header*,int ,int*,struct ocfs2_alloc_context**) ;
 int ocfs2_reflink_xattr_header (int *,struct ocfs2_xattr_reflink*,TYPE_4__*,struct ocfs2_xattr_header*,TYPE_5__*,struct ocfs2_xattr_header*,struct ocfs2_xattr_value_buf*,struct ocfs2_alloc_context*,int ,int *) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ocfs2_reflink_xattr_inline(struct ocfs2_xattr_reflink *args)
{
 int ret = 0, credits = 0;
 handle_t *handle;
 struct ocfs2_super *osb = OCFS2_SB(args->old_inode->i_sb);
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)args->old_bh->b_data;
 int inline_size = le16_to_cpu(di->i_xattr_inline_size);
 int header_off = osb->sb->s_blocksize - inline_size;
 struct ocfs2_xattr_header *xh = (struct ocfs2_xattr_header *)
     (args->old_bh->b_data + header_off);
 struct ocfs2_xattr_header *new_xh = (struct ocfs2_xattr_header *)
     (args->new_bh->b_data + header_off);
 struct ocfs2_alloc_context *meta_ac = ((void*)0);
 struct ocfs2_inode_info *new_oi;
 struct ocfs2_dinode *new_di;
 struct ocfs2_xattr_value_buf vb = {
  .vb_bh = args->new_bh,
  .vb_access = ocfs2_journal_access_di,
 };

 ret = ocfs2_reflink_lock_xattr_allocators(osb, xh, args->ref_root_bh,
        &credits, &meta_ac);
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

 ret = ocfs2_journal_access_di(handle, INODE_CACHE(args->new_inode),
          args->new_bh, OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 memcpy(args->new_bh->b_data + header_off,
        args->old_bh->b_data + header_off, inline_size);

 new_di = (struct ocfs2_dinode *)args->new_bh->b_data;
 new_di->i_xattr_inline_size = cpu_to_le16(inline_size);

 ret = ocfs2_reflink_xattr_header(handle, args, args->old_bh, xh,
      args->new_bh, new_xh, &vb, meta_ac,
      ocfs2_get_xattr_value_root, ((void*)0));
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 new_oi = OCFS2_I(args->new_inode);




 if (!(new_oi->ip_dyn_features & OCFS2_INLINE_DATA_FL) &&
     !(ocfs2_inode_is_fast_symlink(args->new_inode))) {
  struct ocfs2_extent_list *el = &new_di->id2.i_list;
  le16_add_cpu(&el->l_count, -(inline_size /
     sizeof(struct ocfs2_extent_rec)));
 }
 spin_lock(&new_oi->ip_lock);
 new_oi->ip_dyn_features |= OCFS2_HAS_XATTR_FL | OCFS2_INLINE_XATTR_FL;
 new_di->i_dyn_features = cpu_to_le16(new_oi->ip_dyn_features);
 spin_unlock(&new_oi->ip_lock);

 ocfs2_journal_dirty(handle, args->new_bh);

out_commit:
 ocfs2_commit_trans(osb, handle);

out:
 if (meta_ac)
  ocfs2_free_alloc_context(meta_ac);
 return ret;
}
