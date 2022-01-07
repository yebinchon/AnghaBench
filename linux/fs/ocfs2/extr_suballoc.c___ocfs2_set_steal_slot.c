
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int s_inode_steal_slot; int s_meta_steal_slot; int osb_lock; } ;


 int EXTENT_ALLOC_SYSTEM_INODE ;
 int INODE_ALLOC_SYSTEM_INODE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __ocfs2_set_steal_slot(struct ocfs2_super *osb, int slot, int type)
{
 spin_lock(&osb->osb_lock);
 if (type == INODE_ALLOC_SYSTEM_INODE)
  osb->s_inode_steal_slot = slot;
 else if (type == EXTENT_ALLOC_SYSTEM_INODE)
  osb->s_meta_steal_slot = slot;
 spin_unlock(&osb->osb_lock);
}
