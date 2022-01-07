
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs42_copy_res {void* synchronous; void* consecutive; } ;
typedef int __be32 ;


 int EIO ;
 void* be32_to_cpup (int ) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_copy_requirements(struct xdr_stream *xdr,
        struct nfs42_copy_res *res) {
 __be32 *p;

 p = xdr_inline_decode(xdr, 4 + 4);
 if (unlikely(!p))
  return -EIO;

 res->consecutive = be32_to_cpup(p++);
 res->synchronous = be32_to_cpup(p++);
 return 0;
}
