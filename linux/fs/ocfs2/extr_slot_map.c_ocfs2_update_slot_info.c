
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_slot_info {scalar_t__ si_extended; } ;


 int ocfs2_update_slot_info_extended (struct ocfs2_slot_info*) ;
 int ocfs2_update_slot_info_old (struct ocfs2_slot_info*) ;

__attribute__((used)) static void ocfs2_update_slot_info(struct ocfs2_slot_info *si)
{




 if (si->si_extended)
  ocfs2_update_slot_info_extended(si);
 else
  ocfs2_update_slot_info_old(si);
}
