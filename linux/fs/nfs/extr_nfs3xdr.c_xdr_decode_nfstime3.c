
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {void* tv_nsec; void* tv_sec; } ;
typedef int __be32 ;


 void* be32_to_cpup (int ) ;

__attribute__((used)) static __be32 *xdr_decode_nfstime3(__be32 *p, struct timespec *timep)
{
 timep->tv_sec = be32_to_cpup(p++);
 timep->tv_nsec = be32_to_cpup(p++);
 return p;
}
