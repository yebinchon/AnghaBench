
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_net {int dummy; } ;
struct net {int dummy; } ;


 struct rxrpc_net* net_generic (struct net*,int ) ;
 int rxrpc_net_id ;

__attribute__((used)) static inline struct rxrpc_net *rxrpc_net(struct net *net)
{
 return net_generic(net, rxrpc_net_id);
}
