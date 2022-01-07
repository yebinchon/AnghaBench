
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stid {int sc_lock; int sc_stateid; } ;
typedef int stateid_t ;
typedef scalar_t__ __be32 ;


 scalar_t__ check_stateid_generation (int *,int *,int) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfsd4_verify_open_stid (struct nfs4_stid*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static __be32 nfsd4_stid_check_stateid_generation(stateid_t *in, struct nfs4_stid *s, bool has_session)
{
 __be32 ret;

 spin_lock(&s->sc_lock);
 ret = nfsd4_verify_open_stid(s);
 if (ret == nfs_ok)
  ret = check_stateid_generation(in, &s->sc_stateid, has_session);
 spin_unlock(&s->sc_lock);
 return ret;
}
