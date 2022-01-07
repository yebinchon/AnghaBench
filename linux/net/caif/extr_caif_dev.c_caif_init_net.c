
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct TYPE_2__ {int lock; int list; } ;
struct caif_net {int cfg; TYPE_1__ caifdevs; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int caif_net_id ;
 int cfcnfg_create () ;
 int mutex_init (int *) ;
 struct caif_net* net_generic (struct net*,int ) ;

__attribute__((used)) static int caif_init_net(struct net *net)
{
 struct caif_net *caifn = net_generic(net, caif_net_id);
 INIT_LIST_HEAD(&caifn->caifdevs.list);
 mutex_init(&caifn->caifdevs.lock);

 caifn->cfg = cfcnfg_create();
 if (!caifn->cfg)
  return -ENOMEM;

 return 0;
}
