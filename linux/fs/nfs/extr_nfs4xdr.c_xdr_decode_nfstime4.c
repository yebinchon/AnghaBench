
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef scalar_t__ __u64 ;
typedef int __be32 ;


 int be32_to_cpup (int ) ;
 int * xdr_decode_hyper (int *,scalar_t__*) ;

__attribute__((used)) static __be32 *
xdr_decode_nfstime4(__be32 *p, struct timespec *t)
{
 __u64 sec;

 p = xdr_decode_hyper(p, &sec);
 t-> tv_sec = (time_t)sec;
 t->tv_nsec = be32_to_cpup(p++);
 return p;
}
