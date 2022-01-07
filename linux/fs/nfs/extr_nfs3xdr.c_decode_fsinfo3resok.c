
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_fsinfo {scalar_t__ lease_time; int time_delta; int maxfilesize; void* dtpref; void* wtmult; void* wtpref; void* wtmax; void* rtmult; void* rtpref; void* rtmax; } ;
typedef int __be32 ;


 int EIO ;
 void* be32_to_cpup (int ) ;
 scalar_t__ unlikely (int) ;
 int xdr_decode_nfstime3 (int *,int *) ;
 int * xdr_decode_size3 (int *,int *) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_fsinfo3resok(struct xdr_stream *xdr,
          struct nfs_fsinfo *result)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, 4 * 7 + 8 + 8 + 4);
 if (unlikely(!p))
  return -EIO;
 result->rtmax = be32_to_cpup(p++);
 result->rtpref = be32_to_cpup(p++);
 result->rtmult = be32_to_cpup(p++);
 result->wtmax = be32_to_cpup(p++);
 result->wtpref = be32_to_cpup(p++);
 result->wtmult = be32_to_cpup(p++);
 result->dtpref = be32_to_cpup(p++);
 p = xdr_decode_size3(p, &result->maxfilesize);
 xdr_decode_nfstime3(p, &result->time_delta);


 result->lease_time = 0;
 return 0;
}
