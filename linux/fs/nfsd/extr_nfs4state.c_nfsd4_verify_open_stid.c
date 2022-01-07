
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stid {int sc_type; } ;
typedef int __be32 ;





 int nfs_ok ;
 int nfserr_bad_stateid ;
 int nfserr_deleg_revoked ;

__attribute__((used)) static __be32
nfsd4_verify_open_stid(struct nfs4_stid *s)
{
 __be32 ret = nfs_ok;

 switch (s->sc_type) {
 default:
  break;
 case 0:
 case 129:
 case 130:
  ret = nfserr_bad_stateid;
  break;
 case 128:
  ret = nfserr_deleg_revoked;
 }
 return ret;
}
