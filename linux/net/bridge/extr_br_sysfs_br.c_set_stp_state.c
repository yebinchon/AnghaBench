
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int dummy; } ;


 int br_stp_set_enabled (struct net_bridge*,unsigned long) ;

__attribute__((used)) static int set_stp_state(struct net_bridge *br, unsigned long val)
{
 br_stp_set_enabled(br, val);

 return 0;
}
