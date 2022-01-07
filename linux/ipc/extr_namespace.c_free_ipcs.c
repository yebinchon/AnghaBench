
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct kern_ipc_perm kern_ipc_perm ;
struct ipc_namespace {int dummy; } ;
struct ipc_ids {int in_use; int rwsem; int ipcs_idr; } ;


 int down_write (int *) ;
 struct kern_ipc_perm* idr_find (int *,int) ;
 int ipc_lock_object (struct kern_ipc_perm*) ;
 int rcu_read_lock () ;
 int up_write (int *) ;

void free_ipcs(struct ipc_namespace *ns, struct ipc_ids *ids,
        void (*free)(struct ipc_namespace *, struct kern_ipc_perm *))
{
 struct kern_ipc_perm *perm;
 int next_id;
 int total, in_use;

 down_write(&ids->rwsem);

 in_use = ids->in_use;

 for (total = 0, next_id = 0; total < in_use; next_id++) {
  perm = idr_find(&ids->ipcs_idr, next_id);
  if (perm == ((void*)0))
   continue;
  rcu_read_lock();
  ipc_lock_object(perm);
  free(ns, perm);
  total++;
 }
 up_write(&ids->rwsem);
}
