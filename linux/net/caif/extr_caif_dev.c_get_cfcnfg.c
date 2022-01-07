
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct cfcnfg {int dummy; } ;
struct caif_net {struct cfcnfg* cfg; } ;


 int caif_net_id ;
 struct caif_net* net_generic (struct net*,int ) ;

struct cfcnfg *get_cfcnfg(struct net *net)
{
 struct caif_net *caifn;
 caifn = net_generic(net, caif_net_id);
 return caifn->cfg;
}
