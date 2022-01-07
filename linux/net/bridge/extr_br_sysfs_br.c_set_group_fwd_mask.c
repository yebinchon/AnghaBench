
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {unsigned long group_fwd_mask; } ;


 unsigned long BR_GROUPFWD_RESTRICTED ;
 int EINVAL ;

__attribute__((used)) static int set_group_fwd_mask(struct net_bridge *br, unsigned long val)
{
 if (val & BR_GROUPFWD_RESTRICTED)
  return -EINVAL;

 br->group_fwd_mask = val;

 return 0;
}
