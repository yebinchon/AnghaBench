
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int deleted; int id; } ;
struct ipc_ids {int max_idx; int ipcs_idr; int in_use; } ;


 int idr_find (int *,int) ;
 int idr_remove (int *,int) ;
 int ipc_kht_remove (struct ipc_ids*,struct kern_ipc_perm*) ;
 int ipcid_to_idx (int ) ;
 scalar_t__ unlikely (int) ;

void ipc_rmid(struct ipc_ids *ids, struct kern_ipc_perm *ipcp)
{
 int idx = ipcid_to_idx(ipcp->id);

 idr_remove(&ids->ipcs_idr, idx);
 ipc_kht_remove(ids, ipcp);
 ids->in_use--;
 ipcp->deleted = 1;

 if (unlikely(idx == ids->max_idx)) {
  do {
   idx--;
   if (idx == -1)
    break;
  } while (!idr_find(&ids->ipcs_idr, idx));
  ids->max_idx = idx;
 }
}
