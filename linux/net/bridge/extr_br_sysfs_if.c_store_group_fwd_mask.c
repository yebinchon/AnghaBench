
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {unsigned long group_fwd_mask; } ;


 unsigned long BR_GROUPFWD_MACPAUSE ;
 int EINVAL ;

__attribute__((used)) static int store_group_fwd_mask(struct net_bridge_port *p,
    unsigned long v)
{
 if (v & BR_GROUPFWD_MACPAUSE)
  return -EINVAL;
 p->group_fwd_mask = v;

 return 0;
}
