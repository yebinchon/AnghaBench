
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_net {int dummy; } ;
struct net {int dummy; } ;


 struct tipc_net* net_generic (struct net*,int ) ;
 int tipc_net_id ;

__attribute__((used)) static inline struct tipc_net *tipc_net(struct net *net)
{
 return net_generic(net, tipc_net_id);
}
