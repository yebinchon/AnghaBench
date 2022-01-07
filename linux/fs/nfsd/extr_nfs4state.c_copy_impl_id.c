
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int tv_nsec; int tv_sec; } ;
struct TYPE_8__ {int data; } ;
struct nfsd4_exchange_id {TYPE_2__ nii_time; TYPE_4__ nii_name; TYPE_4__ nii_domain; } ;
struct TYPE_5__ {int tv_nsec; int tv_sec; } ;
struct TYPE_7__ {int data; } ;
struct nfs4_client {TYPE_1__ cl_nii_time; TYPE_3__ cl_nii_name; TYPE_3__ cl_nii_domain; } ;
typedef int __be32 ;


 int GFP_KERNEL ;
 int nfserr_jukebox ;
 int xdr_netobj_dup (TYPE_3__*,TYPE_4__*,int ) ;

__attribute__((used)) static __be32 copy_impl_id(struct nfs4_client *clp,
    struct nfsd4_exchange_id *exid)
{
 if (!exid->nii_domain.data)
  return 0;
 xdr_netobj_dup(&clp->cl_nii_domain, &exid->nii_domain, GFP_KERNEL);
 if (!clp->cl_nii_domain.data)
  return nfserr_jukebox;
 xdr_netobj_dup(&clp->cl_nii_name, &exid->nii_name, GFP_KERNEL);
 if (!clp->cl_nii_name.data)
  return nfserr_jukebox;
 clp->cl_nii_time.tv_sec = exid->nii_time.tv_sec;
 clp->cl_nii_time.tv_nsec = exid->nii_time.tv_nsec;
 return 0;
}
