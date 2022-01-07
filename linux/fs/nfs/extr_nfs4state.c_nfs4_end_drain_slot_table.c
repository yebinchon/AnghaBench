
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_slot_table {int slot_tbl_lock; int slot_tbl_state; } ;


 int NFS4_SLOT_TBL_DRAINING ;
 int nfs41_wake_slot_table (struct nfs4_slot_table*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void nfs4_end_drain_slot_table(struct nfs4_slot_table *tbl)
{
 if (test_and_clear_bit(NFS4_SLOT_TBL_DRAINING, &tbl->slot_tbl_state)) {
  spin_lock(&tbl->slot_tbl_lock);
  nfs41_wake_slot_table(tbl);
  spin_unlock(&tbl->slot_tbl_lock);
 }
}
