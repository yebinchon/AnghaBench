
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct l2tp_net {int dummy; } ;


 int BUG_ON (int) ;
 int l2tp_net_id ;
 struct l2tp_net* net_generic (struct net const*,int ) ;

__attribute__((used)) static inline struct l2tp_net *l2tp_pernet(const struct net *net)
{
 BUG_ON(!net);

 return net_generic(net, l2tp_net_id);
}
