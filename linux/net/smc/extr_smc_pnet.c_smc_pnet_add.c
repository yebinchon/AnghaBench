
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_user_pnetentry {scalar_t__ ndev; } ;
struct smc_pnettable {int dummy; } ;
struct smc_net {struct smc_pnettable pnettable; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int attrs; } ;


 int dev_put (scalar_t__) ;
 struct net* genl_info_net (struct genl_info*) ;
 struct smc_net* net_generic (struct net*,int ) ;
 int smc_net_id ;
 int smc_pnet_enter (struct smc_pnettable*,struct smc_user_pnetentry*) ;
 int smc_pnet_fill_entry (struct net*,struct smc_user_pnetentry*,int ) ;

__attribute__((used)) static int smc_pnet_add(struct sk_buff *skb, struct genl_info *info)
{
 struct net *net = genl_info_net(info);
 struct smc_user_pnetentry pnetelem;
 struct smc_pnettable *pnettable;
 struct smc_net *sn;
 int rc;


 sn = net_generic(net, smc_net_id);
 pnettable = &sn->pnettable;

 rc = smc_pnet_fill_entry(net, &pnetelem, info->attrs);
 if (!rc)
  rc = smc_pnet_enter(pnettable, &pnetelem);
 if (pnetelem.ndev)
  dev_put(pnetelem.ndev);
 return rc;
}
