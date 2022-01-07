
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ratelimit (int *) ;
 int net_ratelimit_state ;

int net_ratelimit(void)
{
 return __ratelimit(&net_ratelimit_state);
}
