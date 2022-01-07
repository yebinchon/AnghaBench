
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int __be32 ;


 void* htonl (int ) ;

__attribute__((used)) static __be32 *
encode_time3(__be32 *p, struct timespec *time)
{
 *p++ = htonl((u32) time->tv_sec); *p++ = htonl(time->tv_nsec);
 return p;
}
