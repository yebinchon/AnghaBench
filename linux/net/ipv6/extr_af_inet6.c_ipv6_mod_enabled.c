
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ disable_ipv6_mod ;

bool ipv6_mod_enabled(void)
{
 return disable_ipv6_mod == 0;
}
