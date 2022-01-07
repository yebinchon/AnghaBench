
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int deleted; scalar_t__ key; int lock; int khtnode; int cgid; int gid; int uid; int cuid; int refcount; } ;
struct ipc_ids {int in_use; int max_idx; int ipcs_idr; int key_ht; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int ENOSPC ;
 int GFP_KERNEL ;
 scalar_t__ IPC_PRIVATE ;
 int current_euid_egid (int *,int *) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int idr_remove (int *,int) ;
 int ipc_idr_alloc (struct ipc_ids*,struct kern_ipc_perm*) ;
 int ipc_kht_params ;
 int ipc_mni ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int refcount_set (int *,int) ;
 int rhashtable_insert_fast (int *,int *,int ) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

int ipc_addid(struct ipc_ids *ids, struct kern_ipc_perm *new, int limit)
{
 kuid_t euid;
 kgid_t egid;
 int idx, err;


 refcount_set(&new->refcount, 1);

 if (limit > ipc_mni)
  limit = ipc_mni;

 if (ids->in_use >= limit)
  return -ENOSPC;

 idr_preload(GFP_KERNEL);

 spin_lock_init(&new->lock);
 rcu_read_lock();
 spin_lock(&new->lock);

 current_euid_egid(&euid, &egid);
 new->cuid = new->uid = euid;
 new->gid = new->cgid = egid;

 new->deleted = 0;

 idx = ipc_idr_alloc(ids, new);
 idr_preload_end();

 if (idx >= 0 && new->key != IPC_PRIVATE) {
  err = rhashtable_insert_fast(&ids->key_ht, &new->khtnode,
          ipc_kht_params);
  if (err < 0) {
   idr_remove(&ids->ipcs_idr, idx);
   idx = err;
  }
 }
 if (idx < 0) {
  new->deleted = 1;
  spin_unlock(&new->lock);
  rcu_read_unlock();
  return idx;
 }

 ids->in_use++;
 if (idx > ids->max_idx)
  ids->max_idx = idx;
 return idx;
}
