
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int dead; int all; } ;
struct xfrm_policy_walk {scalar_t__ seq; int type; TYPE_1__ walk; } ;


 int INIT_LIST_HEAD (int *) ;

void xfrm_policy_walk_init(struct xfrm_policy_walk *walk, u8 type)
{
 INIT_LIST_HEAD(&walk->walk.all);
 walk->walk.dead = 1;
 walk->type = type;
 walk->seq = 0;
}
