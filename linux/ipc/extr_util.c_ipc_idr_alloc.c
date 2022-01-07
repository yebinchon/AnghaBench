
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {scalar_t__ seq; int id; } ;
struct ipc_ids {int next_id; int in_use; int last_idx; scalar_t__ seq; int ipcs_idr; } ;


 int GFP_NOWAIT ;
 int idr_alloc (int *,struct kern_ipc_perm*,int ,int ,int ) ;
 int idr_alloc_cyclic (int *,int *,int ,int,int ) ;
 int idr_replace (int *,struct kern_ipc_perm*,int) ;
 int ipc_min_cycle ;
 int ipc_mni ;
 scalar_t__ ipcid_seq_max () ;
 int ipcid_to_idx (int) ;
 scalar_t__ ipcid_to_seqx (int) ;
 int ipcmni_seq_shift () ;
 int max (int,int ) ;
 int min (int,int ) ;

__attribute__((used)) static inline int ipc_idr_alloc(struct ipc_ids *ids, struct kern_ipc_perm *new)
{
 int idx, next_id = -1;
 if (next_id < 0) {
  int max_idx;

  max_idx = max(ids->in_use*3/2, ipc_min_cycle);
  max_idx = min(max_idx, ipc_mni);


  idx = idr_alloc_cyclic(&ids->ipcs_idr, ((void*)0), 0, max_idx,
     GFP_NOWAIT);

  if (idx >= 0) {





   if (idx <= ids->last_idx) {
    ids->seq++;
    if (ids->seq >= ipcid_seq_max())
     ids->seq = 0;
   }
   ids->last_idx = idx;

   new->seq = ids->seq;




   idr_replace(&ids->ipcs_idr, new, idx);
  }
 } else {
  new->seq = ipcid_to_seqx(next_id);
  idx = idr_alloc(&ids->ipcs_idr, new, ipcid_to_idx(next_id),
    0, GFP_NOWAIT);
 }
 if (idx >= 0)
  new->id = (new->seq << ipcmni_seq_shift()) + idx;
 return idx;
}
