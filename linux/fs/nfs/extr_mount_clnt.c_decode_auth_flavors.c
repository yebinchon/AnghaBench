
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct mountres {unsigned int* auth_count; void** auth_flavors; } ;
typedef void* rpc_authflavor_t ;
typedef int __be32 ;


 int EIO ;
 int NFS_MAX_SECFLAVORS ;
 void* be32_to_cpup (int *) ;
 int dprintk (char*,int,...) ;
 scalar_t__ unlikely (int ) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_auth_flavors(struct xdr_stream *xdr, struct mountres *res)
{
 rpc_authflavor_t *flavors = res->auth_flavors;
 unsigned int *count = res->auth_count;
 u32 entries, i;
 __be32 *p;

 if (*count == 0)
  return 0;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(p == ((void*)0)))
  return -EIO;
 entries = be32_to_cpup(p);
 dprintk("NFS: received %u auth flavors\n", entries);
 if (entries > NFS_MAX_SECFLAVORS)
  entries = NFS_MAX_SECFLAVORS;

 p = xdr_inline_decode(xdr, 4 * entries);
 if (unlikely(p == ((void*)0)))
  return -EIO;

 if (entries > *count)
  entries = *count;

 for (i = 0; i < entries; i++) {
  flavors[i] = be32_to_cpup(p++);
  dprintk("NFS:   auth flavor[%u]: %d\n", i, flavors[i]);
 }
 *count = i;

 return 0;
}
