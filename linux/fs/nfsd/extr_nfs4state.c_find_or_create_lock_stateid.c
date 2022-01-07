
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs4_stid {int dummy; } ;
struct TYPE_2__ {struct nfs4_client* so_client; } ;
struct nfs4_openowner {TYPE_1__ oo_owner; } ;
struct nfs4_ol_stateid {struct nfs4_stid st_stid; int st_stateowner; } ;
struct nfs4_lockowner {int dummy; } ;
struct nfs4_file {int dummy; } ;
struct nfs4_client {int cl_lock; } ;
struct inode {int dummy; } ;


 struct nfs4_ol_stateid* find_lock_stateid (struct nfs4_lockowner*,struct nfs4_file*) ;
 struct nfs4_ol_stateid* init_lock_stateid (struct nfs4_ol_stateid*,struct nfs4_lockowner*,struct nfs4_file*,struct inode*,struct nfs4_ol_stateid*) ;
 struct nfs4_stid* nfs4_alloc_stid (struct nfs4_client*,int ,int ) ;
 int nfs4_free_lock_stateid ;
 int nfs4_put_stid (struct nfs4_stid*) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfsd4_lock_ol_stateid (struct nfs4_ol_stateid*) ;
 struct nfs4_ol_stateid* openlockstateid (struct nfs4_stid*) ;
 struct nfs4_openowner* openowner (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stateid_slab ;

__attribute__((used)) static struct nfs4_ol_stateid *
find_or_create_lock_stateid(struct nfs4_lockowner *lo, struct nfs4_file *fi,
       struct inode *inode, struct nfs4_ol_stateid *ost,
       bool *new)
{
 struct nfs4_stid *ns = ((void*)0);
 struct nfs4_ol_stateid *lst;
 struct nfs4_openowner *oo = openowner(ost->st_stateowner);
 struct nfs4_client *clp = oo->oo_owner.so_client;

 *new = 0;
 spin_lock(&clp->cl_lock);
 lst = find_lock_stateid(lo, fi);
 spin_unlock(&clp->cl_lock);
 if (lst != ((void*)0)) {
  if (nfsd4_lock_ol_stateid(lst) == nfs_ok)
   goto out;
  nfs4_put_stid(&lst->st_stid);
 }
 ns = nfs4_alloc_stid(clp, stateid_slab, nfs4_free_lock_stateid);
 if (ns == ((void*)0))
  return ((void*)0);

 lst = init_lock_stateid(openlockstateid(ns), lo, fi, inode, ost);
 if (lst == openlockstateid(ns))
  *new = 1;
 else
  nfs4_put_stid(ns);
out:
 return lst;
}
