
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct ocfs2_super {int s_mount_opt; int s_num_inodes_stolen; int osb_lock; scalar_t__ osb_inode_alloc_group; scalar_t__ slot_num; } ;
struct ocfs2_alloc_context {int ac_bits_wanted; scalar_t__ ac_max_block; int ac_group_search; int ac_which; } ;


 int ALLOC_GROUPS_FROM_GLOBAL ;
 int ALLOC_NEW_GROUP ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int INODE_ALLOC_SYSTEM_INODE ;
 int OCFS2_AC_USE_INODE ;
 int OCFS2_INVALID_SLOT ;
 scalar_t__ OCFS2_MAX_TO_STEAL ;
 int OCFS2_MOUNT_INODE64 ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 struct ocfs2_alloc_context* kzalloc (int,int ) ;
 int mlog_errno (int) ;
 int ocfs2_block_group_search ;
 int ocfs2_free_ac_resource (struct ocfs2_alloc_context*) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_get_inode_steal_slot (struct ocfs2_super*) ;
 int ocfs2_init_inode_steal_slot (struct ocfs2_super*) ;
 int ocfs2_reserve_suballoc_bits (struct ocfs2_super*,struct ocfs2_alloc_context*,int ,scalar_t__,scalar_t__*,int) ;
 int ocfs2_steal_inode (struct ocfs2_super*,struct ocfs2_alloc_context*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ocfs2_reserve_new_inode_new_group (unsigned long long) ;

int ocfs2_reserve_new_inode(struct ocfs2_super *osb,
       struct ocfs2_alloc_context **ac)
{
 int status;
 int slot = ocfs2_get_inode_steal_slot(osb);
 u64 alloc_group;

 *ac = kzalloc(sizeof(struct ocfs2_alloc_context), GFP_KERNEL);
 if (!(*ac)) {
  status = -ENOMEM;
  mlog_errno(status);
  goto bail;
 }

 (*ac)->ac_bits_wanted = 1;
 (*ac)->ac_which = OCFS2_AC_USE_INODE;

 (*ac)->ac_group_search = ocfs2_block_group_search;






 if (!(osb->s_mount_opt & OCFS2_MOUNT_INODE64))
  (*ac)->ac_max_block = (u32)~0U;
 if (slot != OCFS2_INVALID_SLOT &&
     atomic_read(&osb->s_num_inodes_stolen) < OCFS2_MAX_TO_STEAL)
  goto inode_steal;

 atomic_set(&osb->s_num_inodes_stolen, 0);
 alloc_group = osb->osb_inode_alloc_group;
 status = ocfs2_reserve_suballoc_bits(osb, *ac,
          INODE_ALLOC_SYSTEM_INODE,
          (u32)osb->slot_num,
          &alloc_group,
          ALLOC_NEW_GROUP |
          ALLOC_GROUPS_FROM_GLOBAL);
 if (status >= 0) {
  status = 0;

  spin_lock(&osb->osb_lock);
  osb->osb_inode_alloc_group = alloc_group;
  spin_unlock(&osb->osb_lock);
  trace_ocfs2_reserve_new_inode_new_group(
   (unsigned long long)alloc_group);





  if (slot != OCFS2_INVALID_SLOT)
   ocfs2_init_inode_steal_slot(osb);
  goto bail;
 } else if (status < 0 && status != -ENOSPC) {
  mlog_errno(status);
  goto bail;
 }

 ocfs2_free_ac_resource(*ac);

inode_steal:
 status = ocfs2_steal_inode(osb, *ac);
 atomic_inc(&osb->s_num_inodes_stolen);
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
