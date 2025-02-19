
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct timespec {int dummy; } ;
typedef int __be32 ;


 int EIO ;
 int nfstime4_maxsz ;
 scalar_t__ unlikely (int) ;
 int xdr_decode_nfstime4 (int *,struct timespec*) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_attr_time(struct xdr_stream *xdr, struct timespec *time)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, nfstime4_maxsz << 2);
 if (unlikely(!p))
  return -EIO;
 xdr_decode_nfstime4(p, time);
 return 0;
}
