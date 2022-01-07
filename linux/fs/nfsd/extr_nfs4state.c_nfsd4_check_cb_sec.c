
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_cb_sec {int flavor; } ;
typedef int __be32 ;




 int nfs_ok ;
 int nfserr_encr_alg_unsupp ;

__attribute__((used)) static __be32 nfsd4_check_cb_sec(struct nfsd4_cb_sec *cbs)
{
 switch (cbs->flavor) {
 case 129:
 case 128:
  return nfs_ok;
 default:







  return nfserr_encr_alg_unsupp;
 }
}
