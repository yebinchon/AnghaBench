
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfs_pgio_res {int count; TYPE_1__* verf; } ;
typedef int __be32 ;
struct TYPE_2__ {void* committed; int verifier; } ;


 int EIO ;
 void* NFS_FILE_SYNC ;
 void* be32_to_cpup (int ) ;
 scalar_t__ decode_writeverf3 (struct xdr_stream*,int *) ;
 int dprintk (char*,void*) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_write3resok(struct xdr_stream *xdr,
         struct nfs_pgio_res *result)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, 4 + 4);
 if (unlikely(!p))
  return -EIO;
 result->count = be32_to_cpup(p++);
 result->verf->committed = be32_to_cpup(p++);
 if (unlikely(result->verf->committed > NFS_FILE_SYNC))
  goto out_badvalue;
 if (decode_writeverf3(xdr, &result->verf->verifier))
  return -EIO;
 return result->count;
out_badvalue:
 dprintk("NFS: bad stable_how value: %u\n", result->verf->committed);
 return -EIO;
}
