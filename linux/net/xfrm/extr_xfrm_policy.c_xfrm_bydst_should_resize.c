
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int* policy_count; TYPE_1__* policy_bydst; } ;
struct net {TYPE_2__ xfrm; } ;
struct TYPE_3__ {unsigned int hmask; } ;


 unsigned int xfrm_policy_hashmax ;

__attribute__((used)) static inline int xfrm_bydst_should_resize(struct net *net, int dir, int *total)
{
 unsigned int cnt = net->xfrm.policy_count[dir];
 unsigned int hmask = net->xfrm.policy_bydst[dir].hmask;

 if (total)
  *total += cnt;

 if ((hmask + 1) < xfrm_policy_hashmax &&
     cnt > hmask)
  return 1;

 return 0;
}
