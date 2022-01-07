
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_fh {int fh_handle; } ;
struct nfs4_stid {TYPE_1__* sc_file; } ;
typedef int __be32 ;
struct TYPE_2__ {int fi_fhandle; } ;


 int fh_match (int *,int *) ;
 int nfs_ok ;
 int nfserr_bad_stateid ;

__attribute__((used)) static inline __be32 nfs4_check_fh(struct svc_fh *fhp, struct nfs4_stid *stp)
{
 if (!fh_match(&fhp->fh_handle, &stp->sc_file->fi_fhandle))
  return nfserr_bad_stateid;
 return nfs_ok;
}
