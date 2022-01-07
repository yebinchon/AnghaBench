
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_slot_info {int si_num_slots; TYPE_1__* si_slots; } ;
struct TYPE_2__ {int sl_valid; unsigned int sl_node_num; } ;


 int BUG_ON (int) ;

__attribute__((used)) static void ocfs2_set_slot(struct ocfs2_slot_info *si,
      int slot_num, unsigned int node_num)
{
 BUG_ON((slot_num < 0) || (slot_num >= si->si_num_slots));

 si->si_slots[slot_num].sl_valid = 1;
 si->si_slots[slot_num].sl_node_num = node_num;
}
