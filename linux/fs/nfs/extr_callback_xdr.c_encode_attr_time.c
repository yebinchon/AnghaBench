
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
typedef int __be32 ;


 int NFS4ERR_RESOURCE ;
 int htonl (int ) ;
 scalar_t__ unlikely (int) ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static __be32 encode_attr_time(struct xdr_stream *xdr, const struct timespec *time)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 12);
 if (unlikely(!p))
  return htonl(NFS4ERR_RESOURCE);
 p = xdr_encode_hyper(p, time->tv_sec);
 *p = htonl(time->tv_nsec);
 return 0;
}
