
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs2_fsstat {void* bavail; void* bfree; void* blocks; void* bsize; void* tsize; } ;
typedef int __be32 ;


 int EIO ;
 int NFS_info_sz ;
 void* be32_to_cpup (int *) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_info(struct xdr_stream *xdr, struct nfs2_fsstat *result)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, NFS_info_sz << 2);
 if (unlikely(!p))
  return -EIO;
 result->tsize = be32_to_cpup(p++);
 result->bsize = be32_to_cpup(p++);
 result->blocks = be32_to_cpup(p++);
 result->bfree = be32_to_cpup(p++);
 result->bavail = be32_to_cpup(p);
 return 0;
}
