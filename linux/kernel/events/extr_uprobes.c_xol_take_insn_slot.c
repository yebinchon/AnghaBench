
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xol_area {int vaddr; int slot_count; int wq; int bitmap; } ;


 int UINSNS_PER_PAGE ;
 int UPROBE_XOL_SLOT_BYTES ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int find_first_zero_bit (int ,int) ;
 int test_and_set_bit (int,int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static unsigned long xol_take_insn_slot(struct xol_area *area)
{
 unsigned long slot_addr;
 int slot_nr;

 do {
  slot_nr = find_first_zero_bit(area->bitmap, UINSNS_PER_PAGE);
  if (slot_nr < UINSNS_PER_PAGE) {
   if (!test_and_set_bit(slot_nr, area->bitmap))
    break;

   slot_nr = UINSNS_PER_PAGE;
   continue;
  }
  wait_event(area->wq, (atomic_read(&area->slot_count) < UINSNS_PER_PAGE));
 } while (slot_nr >= UINSNS_PER_PAGE);

 slot_addr = area->vaddr + (slot_nr * UPROBE_XOL_SLOT_BYTES);
 atomic_inc(&area->slot_count);

 return slot_addr;
}
