
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct nfs_fh {int size; int data; } ;
typedef int __be32 ;


 int E2BIG ;
 int EIO ;
 int NFS3_FHSIZE ;
 int be32_to_cpup (int ) ;
 int dprintk (char*,int) ;
 int memcpy (int ,int *,int) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_nfs_fh3(struct xdr_stream *xdr, struct nfs_fh *fh)
{
 u32 length;
 __be32 *p;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(!p))
  return -EIO;
 length = be32_to_cpup(p++);
 if (unlikely(length > NFS3_FHSIZE))
  goto out_toobig;
 p = xdr_inline_decode(xdr, length);
 if (unlikely(!p))
  return -EIO;
 fh->size = length;
 memcpy(fh->data, p, length);
 return 0;
out_toobig:
 dprintk("NFS: file handle size (%u) too big\n", length);
 return -E2BIG;
}
