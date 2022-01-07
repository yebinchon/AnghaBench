
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int FATTR4_WORD0_RDATTR_ERROR ;
 void* htonl (int) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static __be32 *
nfsd4_encode_rdattr_error(struct xdr_stream *xdr, __be32 nfserr)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 20);
 if (!p)
  return ((void*)0);
 *p++ = htonl(2);
 *p++ = htonl(FATTR4_WORD0_RDATTR_ERROR);
 *p++ = htonl(0);

 *p++ = htonl(4);
 *p++ = nfserr;
 return p;
}
