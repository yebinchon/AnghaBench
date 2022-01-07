
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xdr_stream {TYPE_1__* buf; } ;
typedef int __be32 ;
struct TYPE_2__ {scalar_t__ page_len; } ;


 int EIO ;
 int ENAMETOOLONG ;
 scalar_t__ NFS3_MAXPATHLEN ;
 scalar_t__ be32_to_cpup (int *) ;
 int dprintk (char*,scalar_t__,...) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;
 scalar_t__ xdr_read_pages (struct xdr_stream*,scalar_t__) ;
 int xdr_terminate_string (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int decode_nfspath3(struct xdr_stream *xdr)
{
 u32 recvd, count;
 __be32 *p;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(!p))
  return -EIO;
 count = be32_to_cpup(p);
 if (unlikely(count >= xdr->buf->page_len || count > NFS3_MAXPATHLEN))
  goto out_nametoolong;
 recvd = xdr_read_pages(xdr, count);
 if (unlikely(count > recvd))
  goto out_cheating;
 xdr_terminate_string(xdr->buf, count);
 return 0;

out_nametoolong:
 dprintk("NFS: returned pathname too long: %u\n", count);
 return -ENAMETOOLONG;
out_cheating:
 dprintk("NFS: server cheating in pathname result: "
  "count %u > recvd %u\n", count, recvd);
 return -EIO;
}
