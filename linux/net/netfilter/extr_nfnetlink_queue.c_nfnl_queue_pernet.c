
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfnl_queue_net {int dummy; } ;
struct net {int dummy; } ;


 struct nfnl_queue_net* net_generic (struct net*,int ) ;
 int nfnl_queue_net_id ;

__attribute__((used)) static struct nfnl_queue_net *nfnl_queue_pernet(struct net *net)
{
 return net_generic(net, nfnl_queue_net_id);
}
