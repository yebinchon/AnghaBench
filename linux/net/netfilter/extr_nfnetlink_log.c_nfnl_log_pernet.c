
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfnl_log_net {int dummy; } ;
struct net {int dummy; } ;


 struct nfnl_log_net* net_generic (struct net*,int ) ;
 int nfnl_log_net_id ;

__attribute__((used)) static struct nfnl_log_net *nfnl_log_pernet(struct net *net)
{
 return net_generic(net, nfnl_log_net_id);
}
