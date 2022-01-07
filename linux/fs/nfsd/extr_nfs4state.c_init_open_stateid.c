
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfsd4_open {struct nfs4_ol_stateid* op_stp; struct nfs4_openowner* op_openowner; } ;
struct TYPE_6__ {TYPE_1__* so_client; int so_stateids; } ;
struct nfs4_openowner {TYPE_3__ oo_owner; } ;
struct TYPE_5__ {struct nfs4_file* sc_file; int sc_type; int sc_count; } ;
struct nfs4_ol_stateid {int st_mutex; TYPE_2__ st_stid; int st_perfile; int st_perstateowner; int * st_openstp; scalar_t__ st_deny_bmap; scalar_t__ st_access_bmap; int st_stateowner; int st_locks; } ;
struct nfs4_file {int fi_lock; int fi_stateids; } ;
struct TYPE_4__ {int cl_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int NFS4_OPEN_STID ;
 int OPEN_STATEID_MUTEX ;
 int get_nfs4_file (struct nfs4_file*) ;
 int list_add (int *,int *) ;
 int mutex_init (int *) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int nfs4_get_stateowner (TYPE_3__*) ;
 int nfs4_put_stid (TYPE_2__*) ;
 scalar_t__ nfs_ok ;
 struct nfs4_ol_stateid* nfsd4_find_existing_open (struct nfs4_file*,struct nfsd4_open*) ;
 scalar_t__ nfsd4_lock_ol_stateid (struct nfs4_ol_stateid*) ;
 int refcount_inc (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfs4_ol_stateid *
init_open_stateid(struct nfs4_file *fp, struct nfsd4_open *open)
{

 struct nfs4_openowner *oo = open->op_openowner;
 struct nfs4_ol_stateid *retstp = ((void*)0);
 struct nfs4_ol_stateid *stp;

 stp = open->op_stp;

 mutex_init(&stp->st_mutex);
 mutex_lock_nested(&stp->st_mutex, OPEN_STATEID_MUTEX);

retry:
 spin_lock(&oo->oo_owner.so_client->cl_lock);
 spin_lock(&fp->fi_lock);

 retstp = nfsd4_find_existing_open(fp, open);
 if (retstp)
  goto out_unlock;

 open->op_stp = ((void*)0);
 refcount_inc(&stp->st_stid.sc_count);
 stp->st_stid.sc_type = NFS4_OPEN_STID;
 INIT_LIST_HEAD(&stp->st_locks);
 stp->st_stateowner = nfs4_get_stateowner(&oo->oo_owner);
 get_nfs4_file(fp);
 stp->st_stid.sc_file = fp;
 stp->st_access_bmap = 0;
 stp->st_deny_bmap = 0;
 stp->st_openstp = ((void*)0);
 list_add(&stp->st_perstateowner, &oo->oo_owner.so_stateids);
 list_add(&stp->st_perfile, &fp->fi_stateids);

out_unlock:
 spin_unlock(&fp->fi_lock);
 spin_unlock(&oo->oo_owner.so_client->cl_lock);
 if (retstp) {

  if (nfsd4_lock_ol_stateid(retstp) != nfs_ok) {
   nfs4_put_stid(&retstp->st_stid);
   goto retry;
  }

  mutex_unlock(&stp->st_mutex);
  stp = retstp;
 }
 return stp;
}
