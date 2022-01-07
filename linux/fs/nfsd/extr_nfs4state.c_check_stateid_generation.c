
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ si_generation; } ;
typedef TYPE_1__ stateid_t ;
typedef int __be32 ;


 int nfs_ok ;
 scalar_t__ nfsd4_stateid_generation_after (TYPE_1__*,TYPE_1__*) ;
 int nfserr_bad_stateid ;
 int nfserr_old_stateid ;

__attribute__((used)) static __be32 check_stateid_generation(stateid_t *in, stateid_t *ref, bool has_session)
{




 if (has_session && in->si_generation == 0)
  return nfs_ok;

 if (in->si_generation == ref->si_generation)
  return nfs_ok;


 if (nfsd4_stateid_generation_after(in, ref))
  return nfserr_bad_stateid;
 return nfserr_old_stateid;
}
