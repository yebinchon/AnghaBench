
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int s_inode_steal_slot; int s_meta_steal_slot; int osb_lock; } ;


 int EXTENT_ALLOC_SYSTEM_INODE ;
 int INODE_ALLOC_SYSTEM_INODE ;
 int OCFS2_INVALID_SLOT ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int __ocfs2_get_steal_slot(struct ocfs2_super *osb, int type)
{
 int slot = OCFS2_INVALID_SLOT;

 spin_lock(&osb->osb_lock);
 if (type == INODE_ALLOC_SYSTEM_INODE)
  slot = osb->s_inode_steal_slot;
 else if (type == EXTENT_ALLOC_SYSTEM_INODE)
  slot = osb->s_meta_steal_slot;
 spin_unlock(&osb->osb_lock);

 return slot;
}
