
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t nla_total_size (int) ;

__attribute__((used)) static size_t rtnl_xdp_size(void)
{
 size_t xdp_size = nla_total_size(0) +
     nla_total_size(1) +
     nla_total_size(4) +
     nla_total_size(4);

 return xdp_size;
}
