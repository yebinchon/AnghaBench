
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __prandom_reseed (int) ;

void prandom_reseed_late(void)
{
 __prandom_reseed(1);
}
