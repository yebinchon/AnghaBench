
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_slot_table {int complete; int slot_waitq; int slot_tbl_waitq; int slot_tbl_lock; int highest_used_slotid; } ;


 int NFS4_NO_SLOT ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int rpc_init_priority_wait_queue (int *,char const*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void nfs4_init_slot_table(struct nfs4_slot_table *tbl, const char *queue)
{
 tbl->highest_used_slotid = NFS4_NO_SLOT;
 spin_lock_init(&tbl->slot_tbl_lock);
 rpc_init_priority_wait_queue(&tbl->slot_tbl_waitq, queue);
 init_waitqueue_head(&tbl->slot_waitq);
 init_completion(&tbl->complete);
}
