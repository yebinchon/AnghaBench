
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
 scalar_t__ NFS_MAXPATHLEN ;
 scalar_t__ be32_to_cpup (int *) ;
 int dprintk (char*,scalar_t__,...) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;
 scalar_t__ xdr_read_pages (struct xdr_stream*,scalar_t__) ;
 int xdr_terminate_string (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int decode_path(struct xdr_stream *xdr)
{
 u32 length, recvd;
 __be32 *p;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(!p))
  return -EIO;
 length = be32_to_cpup(p);
 if (unlikely(length >= xdr->buf->page_len || length > NFS_MAXPATHLEN))
  goto out_size;
 recvd = xdr_read_pages(xdr, length);
 if (unlikely(length > recvd))
  goto out_cheating;
 xdr_terminate_string(xdr->buf, length);
 return 0;
out_size:
 dprintk("NFS: returned pathname too long: %u\n", length);
 return -ENAMETOOLONG;
out_cheating:
 dprintk("NFS: server cheating in pathname result: "
  "length %u > received %u\n", length, recvd);
 return -EIO;
}
