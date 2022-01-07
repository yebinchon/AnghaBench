
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct nfs_fh {int size; int data; } ;
struct mountres {struct nfs_fh* fh; } ;
typedef int __be32 ;


 int EIO ;
 int NFS3_FHSIZE ;
 int be32_to_cpup (int *) ;
 int memcpy (int ,int *,int) ;
 scalar_t__ unlikely (int ) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_fhandle3(struct xdr_stream *xdr, struct mountres *res)
{
 struct nfs_fh *fh = res->fh;
 u32 size;
 __be32 *p;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(p == ((void*)0)))
  return -EIO;

 size = be32_to_cpup(p);
 if (size > NFS3_FHSIZE || size == 0)
  return -EIO;

 p = xdr_inline_decode(xdr, size);
 if (unlikely(p == ((void*)0)))
  return -EIO;

 fh->size = size;
 memcpy(fh->data, p, size);
 return 0;
}
