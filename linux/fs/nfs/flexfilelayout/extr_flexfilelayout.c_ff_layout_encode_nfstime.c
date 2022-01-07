
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct timespec64 {int tv_nsec; int tv_sec; } ;
typedef int ktime_t ;
typedef int __be32 ;


 int cpu_to_be32 (int ) ;
 struct timespec64 ktime_to_timespec64 (int ) ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void
ff_layout_encode_nfstime(struct xdr_stream *xdr,
    ktime_t t)
{
 struct timespec64 ts;
 __be32 *p;

 p = xdr_reserve_space(xdr, 12);
 ts = ktime_to_timespec64(t);
 p = xdr_encode_hyper(p, ts.tv_sec);
 *p++ = cpu_to_be32(ts.tv_nsec);
}
