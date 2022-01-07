
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_slot_table {int dummy; } ;
struct nfs4_slot {int slot_nr; } ;


 int nfs4_lock_slot (struct nfs4_slot_table*,struct nfs4_slot*) ;
 scalar_t__ nfs4_test_locked_slot (struct nfs4_slot_table*,int ) ;

bool nfs4_try_to_lock_slot(struct nfs4_slot_table *tbl, struct nfs4_slot *slot)
{
 if (nfs4_test_locked_slot(tbl, slot->slot_nr))
  return 0;
 nfs4_lock_slot(tbl, slot);
 return 1;
}
