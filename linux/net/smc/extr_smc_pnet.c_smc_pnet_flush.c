
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int dummy; } ;


 struct net* genl_info_net (struct genl_info*) ;
 int smc_pnet_remove_by_pnetid (struct net*,int *) ;

__attribute__((used)) static int smc_pnet_flush(struct sk_buff *skb, struct genl_info *info)
{
 struct net *net = genl_info_net(info);

 smc_pnet_remove_by_pnetid(net, ((void*)0));
 return 0;
}
