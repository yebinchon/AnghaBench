
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfsd4_compoundargs {int dummy; } ;
typedef int __be32 ;


 int NFS4_SHARE_DENY_BOTH ;
 int READ_BUF (int) ;
 int be32_to_cpup (int ) ;
 int nfs_ok ;
 int nfserr_bad_xdr ;

__attribute__((used)) static __be32 nfsd4_decode_share_deny(struct nfsd4_compoundargs *argp, u32 *x)
{
 __be32 *p;

 READ_BUF(4);
 *x = be32_to_cpup(p++);

 if (*x & ~NFS4_SHARE_DENY_BOTH)
  return nfserr_bad_xdr;
 return nfs_ok;
xdr_error:
 return nfserr_bad_xdr;
}
