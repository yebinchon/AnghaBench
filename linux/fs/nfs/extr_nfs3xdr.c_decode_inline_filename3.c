
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int EIO ;
 int ENAMETOOLONG ;
 int NFS3_MAXNAMLEN ;
 int be32_to_cpup (int *) ;
 int dprintk (char*,int) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_inline_filename3(struct xdr_stream *xdr,
       const char **name, u32 *length)
{
 __be32 *p;
 u32 count;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(!p))
  return -EIO;
 count = be32_to_cpup(p);
 if (count > NFS3_MAXNAMLEN)
  goto out_nametoolong;
 p = xdr_inline_decode(xdr, count);
 if (unlikely(!p))
  return -EIO;
 *name = (const char *)p;
 *length = count;
 return 0;

out_nametoolong:
 dprintk("NFS: returned filename too long: %u\n", count);
 return -ENAMETOOLONG;
}
