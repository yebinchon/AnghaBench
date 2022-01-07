
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xdr_stream {int dummy; } ;
struct nfs_openres {scalar_t__ delegation_type; } ;
typedef int __be32 ;


 int EIO ;




 int be32_to_cpup (int *) ;
 int decode_no_delegation (struct xdr_stream*,struct nfs_openres*) ;
 int decode_rw_delegation (struct xdr_stream*,int,struct nfs_openres*) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_delegation(struct xdr_stream *xdr, struct nfs_openres *res)
{
 __be32 *p;
 uint32_t delegation_type;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(!p))
  return -EIO;
 delegation_type = be32_to_cpup(p);
 res->delegation_type = 0;
 switch (delegation_type) {
 case 131:
  return 0;
 case 129:
 case 128:
  return decode_rw_delegation(xdr, delegation_type, res);
 case 130:
  return decode_no_delegation(xdr, res);
 }
 return -EIO;
}
