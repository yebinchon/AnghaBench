
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_super {int osb_lock; struct inode** local_system_inodes; int max_slots; } ;
struct inode {int dummy; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_NOFS ;
 int NUM_LOCAL_SYSTEM_INODES ;
 int OCFS2_FIRST_LOCAL_SYSTEM_INODE ;
 int OCFS2_INVALID_SLOT ;
 int OCFS2_LAST_LOCAL_SYSTEM_INODE ;
 int array3_size (int,int,int ) ;
 int kfree (struct inode**) ;
 struct inode** kzalloc (int ,int ) ;
 int mlog_errno (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct inode **get_local_system_inode(struct ocfs2_super *osb,
          int type,
          u32 slot)
{
 int index;
 struct inode **local_system_inodes, **free = ((void*)0);

 BUG_ON(slot == OCFS2_INVALID_SLOT);
 BUG_ON(type < OCFS2_FIRST_LOCAL_SYSTEM_INODE ||
        type > OCFS2_LAST_LOCAL_SYSTEM_INODE);

 spin_lock(&osb->osb_lock);
 local_system_inodes = osb->local_system_inodes;
 spin_unlock(&osb->osb_lock);

 if (unlikely(!local_system_inodes)) {
  local_system_inodes =
   kzalloc(array3_size(sizeof(struct inode *),
         NUM_LOCAL_SYSTEM_INODES,
         osb->max_slots),
    GFP_NOFS);
  if (!local_system_inodes) {
   mlog_errno(-ENOMEM);





   return ((void*)0);
  }

  spin_lock(&osb->osb_lock);
  if (osb->local_system_inodes) {

   free = local_system_inodes;
   local_system_inodes = osb->local_system_inodes;
  } else
   osb->local_system_inodes = local_system_inodes;
  spin_unlock(&osb->osb_lock);
  kfree(free);
 }

 index = (slot * NUM_LOCAL_SYSTEM_INODES) +
  (type - OCFS2_FIRST_LOCAL_SYSTEM_INODE);

 return &local_system_inodes[index];
}
