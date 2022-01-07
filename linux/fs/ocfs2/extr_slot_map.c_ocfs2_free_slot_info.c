
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {struct ocfs2_slot_info* slot_info; } ;
struct ocfs2_slot_info {int dummy; } ;


 int __ocfs2_free_slot_info (struct ocfs2_slot_info*) ;

void ocfs2_free_slot_info(struct ocfs2_super *osb)
{
 struct ocfs2_slot_info *si = osb->slot_info;

 osb->slot_info = ((void*)0);
 __ocfs2_free_slot_info(si);
}
