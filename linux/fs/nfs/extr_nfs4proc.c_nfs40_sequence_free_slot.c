
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_slot_table {int slot_tbl_lock; } ;
struct nfs4_slot {struct nfs4_slot_table* table; } ;
struct nfs4_sequence_res {struct nfs4_slot* sr_slot; } ;


 int nfs41_wake_and_assign_slot (struct nfs4_slot_table*,struct nfs4_slot*) ;
 int nfs4_free_slot (struct nfs4_slot_table*,struct nfs4_slot*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfs40_sequence_free_slot(struct nfs4_sequence_res *res)
{
 struct nfs4_slot *slot = res->sr_slot;
 struct nfs4_slot_table *tbl;

 tbl = slot->table;
 spin_lock(&tbl->slot_tbl_lock);
 if (!nfs41_wake_and_assign_slot(tbl, slot))
  nfs4_free_slot(tbl, slot);
 spin_unlock(&tbl->slot_tbl_lock);

 res->sr_slot = ((void*)0);
}
