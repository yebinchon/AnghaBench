
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {unsigned long multicast_igmp_version; int multicast_lock; } ;


 int EINVAL ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int br_multicast_set_igmp_version(struct net_bridge *br, unsigned long val)
{

 switch (val) {
 case 2:
 case 3:
  break;
 default:
  return -EINVAL;
 }

 spin_lock_bh(&br->multicast_lock);
 br->multicast_igmp_version = val;
 spin_unlock_bh(&br->multicast_lock);

 return 0;
}
