
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proto; } ;
struct ip6_tnl {int dev; TYPE_1__ parms; } ;
struct __ip6_tnl_parm {int proto; } ;


 int netdev_state_change (int ) ;

__attribute__((used)) static int ip6_tnl0_update(struct ip6_tnl *t, struct __ip6_tnl_parm *p)
{

 t->parms.proto = p->proto;
 netdev_state_change(t->dev);
 return 0;
}
