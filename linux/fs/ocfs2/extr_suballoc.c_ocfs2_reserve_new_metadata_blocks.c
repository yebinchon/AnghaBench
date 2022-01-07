
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_super {int s_num_meta_stolen; scalar_t__ slot_num; } ;
struct ocfs2_alloc_context {int ac_bits_wanted; int ac_group_search; int ac_which; } ;


 int ALLOC_GROUPS_FROM_GLOBAL ;
 int ALLOC_NEW_GROUP ;
 int ENOMEM ;
 int ENOSPC ;
 int EXTENT_ALLOC_SYSTEM_INODE ;
 int GFP_KERNEL ;
 int OCFS2_AC_USE_META ;
 int OCFS2_INVALID_SLOT ;
 scalar_t__ OCFS2_MAX_TO_STEAL ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 struct ocfs2_alloc_context* kzalloc (int,int ) ;
 int mlog_errno (int) ;
 int ocfs2_block_group_search ;
 int ocfs2_free_ac_resource (struct ocfs2_alloc_context*) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_get_meta_steal_slot (struct ocfs2_super*) ;
 int ocfs2_init_meta_steal_slot (struct ocfs2_super*) ;
 int ocfs2_reserve_suballoc_bits (struct ocfs2_super*,struct ocfs2_alloc_context*,int ,int ,int *,int) ;
 int ocfs2_steal_meta (struct ocfs2_super*,struct ocfs2_alloc_context*) ;

int ocfs2_reserve_new_metadata_blocks(struct ocfs2_super *osb,
          int blocks,
          struct ocfs2_alloc_context **ac)
{
 int status;
 int slot = ocfs2_get_meta_steal_slot(osb);

 *ac = kzalloc(sizeof(struct ocfs2_alloc_context), GFP_KERNEL);
 if (!(*ac)) {
  status = -ENOMEM;
  mlog_errno(status);
  goto bail;
 }

 (*ac)->ac_bits_wanted = blocks;
 (*ac)->ac_which = OCFS2_AC_USE_META;
 (*ac)->ac_group_search = ocfs2_block_group_search;

 if (slot != OCFS2_INVALID_SLOT &&
  atomic_read(&osb->s_num_meta_stolen) < OCFS2_MAX_TO_STEAL)
  goto extent_steal;

 atomic_set(&osb->s_num_meta_stolen, 0);
 status = ocfs2_reserve_suballoc_bits(osb, (*ac),
          EXTENT_ALLOC_SYSTEM_INODE,
          (u32)osb->slot_num, ((void*)0),
          ALLOC_GROUPS_FROM_GLOBAL|ALLOC_NEW_GROUP);


 if (status >= 0) {
  status = 0;
  if (slot != OCFS2_INVALID_SLOT)
   ocfs2_init_meta_steal_slot(osb);
  goto bail;
 } else if (status < 0 && status != -ENOSPC) {
  mlog_errno(status);
  goto bail;
 }

 ocfs2_free_ac_resource(*ac);

extent_steal:
 status = ocfs2_steal_meta(osb, *ac);
 atomic_inc(&osb->s_num_meta_stolen);
 if (status < 0) {
  if (status != -ENOSPC)
   mlog_errno(status);
  goto bail;
 }

 status = 0;
bail:
 if ((status < 0) && *ac) {
  ocfs2_free_alloc_context(*ac);
  *ac = ((void*)0);
 }

 if (status)
  mlog_errno(status);
 return status;
}
