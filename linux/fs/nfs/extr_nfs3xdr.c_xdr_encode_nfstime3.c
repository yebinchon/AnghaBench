
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; int tv_sec; } ;
typedef int __be32 ;


 void* cpu_to_be32 (int ) ;

__attribute__((used)) static __be32 *xdr_encode_nfstime3(__be32 *p, const struct timespec *timep)
{
 *p++ = cpu_to_be32(timep->tv_sec);
 *p++ = cpu_to_be32(timep->tv_nsec);
 return p;
}
