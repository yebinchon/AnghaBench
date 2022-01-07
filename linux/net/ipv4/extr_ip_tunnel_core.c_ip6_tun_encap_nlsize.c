
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwtunnel_state {int dummy; } ;


 int nla_total_size (int) ;
 int nla_total_size_64bit (int) ;

__attribute__((used)) static int ip6_tun_encap_nlsize(struct lwtunnel_state *lwtstate)
{
 return nla_total_size_64bit(8)
  + nla_total_size(16)
  + nla_total_size(16)
  + nla_total_size(1)
  + nla_total_size(1)
  + nla_total_size(2);
}
