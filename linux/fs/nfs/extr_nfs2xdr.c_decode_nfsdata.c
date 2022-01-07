
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
struct nfs_pgio_res {scalar_t__ count; scalar_t__ eof; } ;
typedef int __be32 ;


 int EIO ;
 scalar_t__ be32_to_cpup (int *) ;
 int dprintk (char*,scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;
 scalar_t__ xdr_read_pages (struct xdr_stream*,scalar_t__) ;

__attribute__((used)) static int decode_nfsdata(struct xdr_stream *xdr, struct nfs_pgio_res *result)
{
 u32 recvd, count;
 __be32 *p;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(!p))
  return -EIO;
 count = be32_to_cpup(p);
 recvd = xdr_read_pages(xdr, count);
 if (unlikely(count > recvd))
  goto out_cheating;
out:
 result->eof = 0;
 result->count = count;
 return count;
out_cheating:
 dprintk("NFS: server cheating in read result: "
  "count %u > recvd %u\n", count, recvd);
 count = recvd;
 goto out;
}
