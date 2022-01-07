
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_pathconf {void* max_namelen; void* max_link; } ;
typedef int __be32 ;


 int EIO ;
 void* be32_to_cpup (int *) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_pathconf3resok(struct xdr_stream *xdr,
     struct nfs_pathconf *result)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, 4 * 6);
 if (unlikely(!p))
  return -EIO;
 result->max_link = be32_to_cpup(p++);
 result->max_namelen = be32_to_cpup(p);

 return 0;
}
