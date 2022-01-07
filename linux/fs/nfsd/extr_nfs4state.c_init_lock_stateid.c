
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct nfs4_file* sc_file; int sc_type; int sc_count; } ;
struct nfs4_ol_stateid {int st_mutex; TYPE_1__ st_stid; int st_perfile; int st_perstateowner; int st_locks; struct nfs4_ol_stateid* st_openstp; int st_deny_bmap; scalar_t__ st_access_bmap; int st_stateowner; } ;
struct TYPE_4__ {int so_stateids; struct nfs4_client* so_client; } ;
struct nfs4_lockowner {TYPE_2__ lo_owner; } ;
struct nfs4_file {int fi_lock; int fi_stateids; } ;
struct nfs4_client {int cl_lock; } ;
struct inode {int dummy; } ;


 int NFS4_LOCK_STID ;
 int OPEN_STATEID_MUTEX ;
 struct nfs4_ol_stateid* find_lock_stateid (struct nfs4_lockowner*,struct nfs4_file*) ;
 int get_nfs4_file (struct nfs4_file*) ;
 int list_add (int *,int *) ;
 int mutex_init (int *) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int nfs4_get_stateowner (TYPE_2__*) ;
 int nfs4_put_stid (TYPE_1__*) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfsd4_lock_ol_stateid (struct nfs4_ol_stateid*) ;
 int refcount_inc (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nfs4_ol_stateid *
init_lock_stateid(struct nfs4_ol_stateid *stp, struct nfs4_lockowner *lo,
    struct nfs4_file *fp, struct inode *inode,
    struct nfs4_ol_stateid *open_stp)
{
 struct nfs4_client *clp = lo->lo_owner.so_client;
 struct nfs4_ol_stateid *retstp;

 mutex_init(&stp->st_mutex);
 mutex_lock_nested(&stp->st_mutex, OPEN_STATEID_MUTEX);
retry:
 spin_lock(&clp->cl_lock);
 spin_lock(&fp->fi_lock);
 retstp = find_lock_stateid(lo, fp);
 if (retstp)
  goto out_unlock;

 refcount_inc(&stp->st_stid.sc_count);
 stp->st_stid.sc_type = NFS4_LOCK_STID;
 stp->st_stateowner = nfs4_get_stateowner(&lo->lo_owner);
 get_nfs4_file(fp);
 stp->st_stid.sc_file = fp;
 stp->st_access_bmap = 0;
 stp->st_deny_bmap = open_stp->st_deny_bmap;
 stp->st_openstp = open_stp;
 list_add(&stp->st_locks, &open_stp->st_locks);
 list_add(&stp->st_perstateowner, &lo->lo_owner.so_stateids);
 list_add(&stp->st_perfile, &fp->fi_stateids);
out_unlock:
 spin_unlock(&fp->fi_lock);
 spin_unlock(&clp->cl_lock);
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
