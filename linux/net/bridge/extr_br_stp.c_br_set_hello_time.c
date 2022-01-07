
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {unsigned long bridge_hello_time; unsigned long hello_time; int lock; } ;


 unsigned long BR_MAX_HELLO_TIME ;
 unsigned long BR_MIN_HELLO_TIME ;
 int ERANGE ;
 scalar_t__ br_is_root_bridge (struct net_bridge*) ;
 unsigned long clock_t_to_jiffies (unsigned long) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int br_set_hello_time(struct net_bridge *br, unsigned long val)
{
 unsigned long t = clock_t_to_jiffies(val);

 if (t < BR_MIN_HELLO_TIME || t > BR_MAX_HELLO_TIME)
  return -ERANGE;

 spin_lock_bh(&br->lock);
 br->bridge_hello_time = t;
 if (br_is_root_bridge(br))
  br->hello_time = br->bridge_hello_time;
 spin_unlock_bh(&br->lock);
 return 0;
}
