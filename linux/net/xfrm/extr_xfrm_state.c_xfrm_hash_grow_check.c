
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state_hmask; scalar_t__ state_num; int state_hash_work; } ;
struct net {TYPE_1__ xfrm; } ;


 int schedule_work (int *) ;
 scalar_t__ xfrm_state_hashmax ;

__attribute__((used)) static void xfrm_hash_grow_check(struct net *net, int have_hash_collision)
{
 if (have_hash_collision &&
     (net->xfrm.state_hmask + 1) < xfrm_state_hashmax &&
     net->xfrm.state_num > net->xfrm.state_hmask)
  schedule_work(&net->xfrm.state_hash_work);
}
