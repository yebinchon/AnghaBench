
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ipv6_pinfo {int autoflowlabel; int autoflowlabel_set; } ;


 int ip6_default_np_autolabel (struct net*) ;

bool ip6_autoflowlabel(struct net *net, const struct ipv6_pinfo *np)
{
 if (!np->autoflowlabel_set)
  return ip6_default_np_autolabel(net);
 else
  return np->autoflowlabel;
}
