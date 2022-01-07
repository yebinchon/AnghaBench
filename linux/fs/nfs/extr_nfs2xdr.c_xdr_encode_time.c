
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
typedef int __be32 ;


 int NSEC_PER_USEC ;
 void* cpu_to_be32 (int) ;

__attribute__((used)) static __be32 *xdr_encode_time(__be32 *p, const struct timespec *timep)
{
 *p++ = cpu_to_be32(timep->tv_sec);
 if (timep->tv_nsec != 0)
  *p++ = cpu_to_be32(timep->tv_nsec / NSEC_PER_USEC);
 else
  *p++ = cpu_to_be32(0);
 return p;
}
