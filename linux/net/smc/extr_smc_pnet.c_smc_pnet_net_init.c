
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_pnettable {int lock; int pnetlist; } ;
struct smc_net {struct smc_pnettable pnettable; } ;
struct net {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 struct smc_net* net_generic (struct net*,int ) ;
 int rwlock_init (int *) ;
 int smc_net_id ;

int smc_pnet_net_init(struct net *net)
{
 struct smc_net *sn = net_generic(net, smc_net_id);
 struct smc_pnettable *pnettable = &sn->pnettable;

 INIT_LIST_HEAD(&pnettable->pnetlist);
 rwlock_init(&pnettable->lock);

 return 0;
}
