
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_ol_stateid {int st_mutex; int st_stid; } ;
typedef scalar_t__ __be32 ;


 int LOCK_STATEID_MUTEX ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfsd4_verify_open_stid (int *) ;

__attribute__((used)) static __be32
nfsd4_lock_ol_stateid(struct nfs4_ol_stateid *stp)
{
 __be32 ret;

 mutex_lock_nested(&stp->st_mutex, LOCK_STATEID_MUTEX);
 ret = nfsd4_verify_open_stid(&stp->st_stid);
 if (ret != nfs_ok)
  mutex_unlock(&stp->st_mutex);
 return ret;
}
