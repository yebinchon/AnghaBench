
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int __s64 ;
typedef int __be32 ;


 int cpu_to_be32 (int ) ;
 int * xdr_encode_hyper (int *,int ) ;

__attribute__((used)) static __be32 *
xdr_encode_nfstime4(__be32 *p, const struct timespec *t)
{
 p = xdr_encode_hyper(p, (__s64)t->tv_sec);
 *p++ = cpu_to_be32(t->tv_nsec);
 return p;
}
