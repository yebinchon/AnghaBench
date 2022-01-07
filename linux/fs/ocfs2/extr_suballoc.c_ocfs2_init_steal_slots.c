
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;


 int ocfs2_init_inode_steal_slot (struct ocfs2_super*) ;
 int ocfs2_init_meta_steal_slot (struct ocfs2_super*) ;

void ocfs2_init_steal_slots(struct ocfs2_super *osb)
{
 ocfs2_init_inode_steal_slot(osb);
 ocfs2_init_meta_steal_slot(osb);
}
