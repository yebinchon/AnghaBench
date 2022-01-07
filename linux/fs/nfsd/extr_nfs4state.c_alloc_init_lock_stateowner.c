
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_lock {int lk_new_owner; int lk_new_lock_seqid; } ;
struct nfs4_ol_stateid {int dummy; } ;
struct TYPE_2__ {int so_strhash; int * so_ops; int so_seqid; scalar_t__ so_is_open_owner; int so_stateids; } ;
struct nfs4_lockowner {TYPE_1__ lo_owner; int lo_blocked; } ;
struct nfs4_client {int cl_lock; int * cl_ownerstr_hashtbl; } ;


 int INIT_LIST_HEAD (int *) ;
 struct nfs4_lockowner* alloc_stateowner (int ,int *,struct nfs4_client*) ;
 struct nfs4_lockowner* find_lockowner_str_locked (struct nfs4_client*,int *) ;
 int list_add (int *,int *) ;
 int lockowner_ops ;
 int lockowner_slab ;
 int nfs4_free_stateowner (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfs4_lockowner *
alloc_init_lock_stateowner(unsigned int strhashval, struct nfs4_client *clp,
      struct nfs4_ol_stateid *open_stp,
      struct nfsd4_lock *lock)
{
 struct nfs4_lockowner *lo, *ret;

 lo = alloc_stateowner(lockowner_slab, &lock->lk_new_owner, clp);
 if (!lo)
  return ((void*)0);
 INIT_LIST_HEAD(&lo->lo_blocked);
 INIT_LIST_HEAD(&lo->lo_owner.so_stateids);
 lo->lo_owner.so_is_open_owner = 0;
 lo->lo_owner.so_seqid = lock->lk_new_lock_seqid;
 lo->lo_owner.so_ops = &lockowner_ops;
 spin_lock(&clp->cl_lock);
 ret = find_lockowner_str_locked(clp, &lock->lk_new_owner);
 if (ret == ((void*)0)) {
  list_add(&lo->lo_owner.so_strhash,
    &clp->cl_ownerstr_hashtbl[strhashval]);
  ret = lo;
 } else
  nfs4_free_stateowner(&lo->lo_owner);

 spin_unlock(&clp->cl_lock);
 return ret;
}
