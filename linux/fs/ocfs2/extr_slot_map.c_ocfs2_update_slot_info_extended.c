
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_slot_map_extended {TYPE_2__* se_slots; } ;
struct ocfs2_slot_info {int si_blocks; int si_slots_per_block; int si_num_slots; TYPE_1__** si_bh; } ;
struct TYPE_4__ {int es_node_num; scalar_t__ es_valid; } ;
struct TYPE_3__ {scalar_t__ b_data; } ;


 int le32_to_cpu (int ) ;
 int ocfs2_invalidate_slot (struct ocfs2_slot_info*,int) ;
 int ocfs2_set_slot (struct ocfs2_slot_info*,int,int ) ;

__attribute__((used)) static void ocfs2_update_slot_info_extended(struct ocfs2_slot_info *si)
{
 int b, i, slotno;
 struct ocfs2_slot_map_extended *se;

 slotno = 0;
 for (b = 0; b < si->si_blocks; b++) {
  se = (struct ocfs2_slot_map_extended *)si->si_bh[b]->b_data;
  for (i = 0;
       (i < si->si_slots_per_block) &&
       (slotno < si->si_num_slots);
       i++, slotno++) {
   if (se->se_slots[i].es_valid)
    ocfs2_set_slot(si, slotno,
            le32_to_cpu(se->se_slots[i].es_node_num));
   else
    ocfs2_invalidate_slot(si, slotno);
  }
 }
}
