
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EADDRINUSE ;
 scalar_t__ prandom_u32 () ;
 unsigned short xprt_max_resvport ;
 unsigned short xprt_min_resvport ;

__attribute__((used)) static int xs_get_random_port(void)
{
 unsigned short min = xprt_min_resvport, max = xprt_max_resvport;
 unsigned short range;
 unsigned short rand;

 if (max < min)
  return -EADDRINUSE;
 range = max - min + 1;
 rand = (unsigned short) prandom_u32() % range;
 return rand + min;
}
