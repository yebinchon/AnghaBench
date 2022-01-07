
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {int len; int data; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef int __be32 ;


 int NFS4_OPAQUE_LIMIT ;
 int READ_BUF (int) ;
 int SAVEMEM (int ,int) ;
 int be32_to_cpup (int ) ;
 int nfs_ok ;
 int nfserr_bad_xdr ;

__attribute__((used)) static __be32 nfsd4_decode_opaque(struct nfsd4_compoundargs *argp, struct xdr_netobj *o)
{
 __be32 *p;

 READ_BUF(4);
 o->len = be32_to_cpup(p++);

 if (o->len == 0 || o->len > NFS4_OPAQUE_LIMIT)
  return nfserr_bad_xdr;

 READ_BUF(o->len);
 SAVEMEM(o->data, o->len);
 return nfs_ok;
xdr_error:
 return nfserr_bad_xdr;
}
