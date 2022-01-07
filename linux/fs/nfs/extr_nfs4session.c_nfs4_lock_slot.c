
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nfs4_slot_table {scalar_t__ highest_used_slotid; int generation; int used_slots; } ;
struct nfs4_slot {scalar_t__ slot_nr; int generation; } ;


 scalar_t__ NFS4_NO_SLOT ;
 int __set_bit (scalar_t__,int ) ;

__attribute__((used)) static void nfs4_lock_slot(struct nfs4_slot_table *tbl,
  struct nfs4_slot *slot)
{
 u32 slotid = slot->slot_nr;

 __set_bit(slotid, tbl->used_slots);
 if (slotid > tbl->highest_used_slotid ||
     tbl->highest_used_slotid == NFS4_NO_SLOT)
  tbl->highest_used_slotid = slotid;
 slot->generation = tbl->generation;
}
