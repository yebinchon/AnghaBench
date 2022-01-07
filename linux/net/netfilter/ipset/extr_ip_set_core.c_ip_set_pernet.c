
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct ip_set_net {int dummy; } ;


 int ip_set_net_id ;
 struct ip_set_net* net_generic (struct net*,int ) ;

__attribute__((used)) static inline struct ip_set_net *ip_set_pernet(struct net *net)
{
 return net_generic(net, ip_set_net_id);
}
