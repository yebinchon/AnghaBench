
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {scalar_t__ stp_enabled; } ;


 int ASSERT_RTNL () ;
 scalar_t__ BR_NO_STP ;
 int br_stp_start (struct net_bridge*) ;
 int br_stp_stop (struct net_bridge*) ;

void br_stp_set_enabled(struct net_bridge *br, unsigned long val)
{
 ASSERT_RTNL();

 if (val) {
  if (br->stp_enabled == BR_NO_STP)
   br_stp_start(br);
 } else {
  if (br->stp_enabled != BR_NO_STP)
   br_stp_stop(br);
 }
}
