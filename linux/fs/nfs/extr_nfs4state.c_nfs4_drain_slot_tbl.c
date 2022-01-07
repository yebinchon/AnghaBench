
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_slot_table {scalar_t__ highest_used_slotid; int slot_tbl_lock; int complete; int slot_tbl_state; } ;


 scalar_t__ NFS4_NO_SLOT ;
 int NFS4_SLOT_TBL_DRAINING ;
 int reinit_completion (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int nfs4_drain_slot_tbl(struct nfs4_slot_table *tbl)
{
 set_bit(NFS4_SLOT_TBL_DRAINING, &tbl->slot_tbl_state);
 spin_lock(&tbl->slot_tbl_lock);
 if (tbl->highest_used_slotid != NFS4_NO_SLOT) {
  reinit_completion(&tbl->complete);
  spin_unlock(&tbl->slot_tbl_lock);
  return wait_for_completion_interruptible(&tbl->complete);
 }
 spin_unlock(&tbl->slot_tbl_lock);
 return 0;
}
