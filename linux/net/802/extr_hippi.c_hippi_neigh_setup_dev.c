
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct neigh_parms {TYPE_1__* tbl; } ;
struct TYPE_2__ {scalar_t__ family; } ;


 scalar_t__ AF_INET6 ;
 int MCAST_PROBES ;
 int NEIGH_VAR_INIT (struct neigh_parms*,int ,int ) ;
 int UCAST_PROBES ;

int hippi_neigh_setup_dev(struct net_device *dev, struct neigh_parms *p)
{

 NEIGH_VAR_INIT(p, MCAST_PROBES, 0);





 if (p->tbl->family != AF_INET6)
  NEIGH_VAR_INIT(p, UCAST_PROBES, 0);
 return 0;
}
