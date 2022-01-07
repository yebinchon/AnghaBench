
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_lock; struct ocfs2_slot_info* slot_info; } ;
struct ocfs2_slot_info {int dummy; } ;


 int __ocfs2_node_num_to_slot (struct ocfs2_slot_info*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ocfs2_node_num_to_slot(struct ocfs2_super *osb, unsigned int node_num)
{
 int slot;
 struct ocfs2_slot_info *si = osb->slot_info;

 spin_lock(&osb->osb_lock);
 slot = __ocfs2_node_num_to_slot(si, node_num);
 spin_unlock(&osb->osb_lock);

 return slot;
}
