
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs4_stid {int sc_stateid; } ;
struct TYPE_2__ {int sc_file; } ;
struct nfs4_ol_stateid {int st_mutex; int st_stateowner; TYPE_1__ st_stid; } ;
typedef int stateid_t ;
typedef scalar_t__ __be32 ;


 scalar_t__ check_for_locks (int ,int ) ;
 scalar_t__ check_stateid_generation (int *,int *,int) ;
 int lockowner (int ) ;
 int mutex_unlock (int *) ;
 int nfs4_put_stid (struct nfs4_stid*) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfsd4_lock_ol_stateid (struct nfs4_ol_stateid*) ;
 scalar_t__ nfserr_locks_held ;
 struct nfs4_ol_stateid* openlockstateid (struct nfs4_stid*) ;
 int release_lock_stateid (struct nfs4_ol_stateid*) ;

__attribute__((used)) static __be32
nfsd4_free_lock_stateid(stateid_t *stateid, struct nfs4_stid *s)
{
 struct nfs4_ol_stateid *stp = openlockstateid(s);
 __be32 ret;

 ret = nfsd4_lock_ol_stateid(stp);
 if (ret)
  goto out_put_stid;

 ret = check_stateid_generation(stateid, &s->sc_stateid, 1);
 if (ret)
  goto out;

 ret = nfserr_locks_held;
 if (check_for_locks(stp->st_stid.sc_file,
       lockowner(stp->st_stateowner)))
  goto out;

 release_lock_stateid(stp);
 ret = nfs_ok;

out:
 mutex_unlock(&stp->st_mutex);
out_put_stid:
 nfs4_put_stid(s);
 return ret;
}
