
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct clusterip_net {int dummy; } ;


 int clusterip_net_id ;
 struct clusterip_net* net_generic (struct net*,int ) ;

__attribute__((used)) static inline struct clusterip_net *clusterip_pernet(struct net *net)
{
 return net_generic(net, clusterip_net_id);
}
