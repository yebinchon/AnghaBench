
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phonet_net {int dummy; } ;
struct net {int dummy; } ;


 int BUG_ON (int) ;
 struct phonet_net* net_generic (struct net*,int ) ;
 int phonet_net_id ;

__attribute__((used)) static struct phonet_net *phonet_pernet(struct net *net)
{
 BUG_ON(!net);

 return net_generic(net, phonet_net_id);
}
