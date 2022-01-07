
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int dummy; } ;


 int br_set_ageing_time (struct net_bridge*,unsigned long) ;

__attribute__((used)) static int set_ageing_time(struct net_bridge *br, unsigned long val)
{
 return br_set_ageing_time(br, val);
}
