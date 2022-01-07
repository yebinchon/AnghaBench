
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_slot_info {int si_num_slots; TYPE_1__* si_slots; } ;
struct TYPE_2__ {int sl_valid; } ;


 int ENOSPC ;

__attribute__((used)) static int __ocfs2_find_empty_slot(struct ocfs2_slot_info *si,
       int preferred)
{
 int i, ret = -ENOSPC;

 if ((preferred >= 0) && (preferred < si->si_num_slots)) {
  if (!si->si_slots[preferred].sl_valid) {
   ret = preferred;
   goto out;
  }
 }

 for(i = 0; i < si->si_num_slots; i++) {
  if (!si->si_slots[i].sl_valid) {
   ret = i;
   break;
  }
 }
out:
 return ret;
}
