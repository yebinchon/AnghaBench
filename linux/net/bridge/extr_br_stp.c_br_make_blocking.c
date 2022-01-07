
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {scalar_t__ state; int forward_delay_timer; int br; } ;


 scalar_t__ BR_STATE_BLOCKING ;
 scalar_t__ BR_STATE_DISABLED ;
 scalar_t__ BR_STATE_FORWARDING ;
 scalar_t__ BR_STATE_LEARNING ;
 int RTM_NEWLINK ;
 int br_ifinfo_notify (int ,int *,struct net_bridge_port*) ;
 int br_set_state (struct net_bridge_port*,scalar_t__) ;
 int br_topology_change_detection (int ) ;
 int del_timer (int *) ;

__attribute__((used)) static void br_make_blocking(struct net_bridge_port *p)
{
 if (p->state != BR_STATE_DISABLED &&
     p->state != BR_STATE_BLOCKING) {
  if (p->state == BR_STATE_FORWARDING ||
      p->state == BR_STATE_LEARNING)
   br_topology_change_detection(p->br);

  br_set_state(p, BR_STATE_BLOCKING);
  br_ifinfo_notify(RTM_NEWLINK, ((void*)0), p);

  del_timer(&p->forward_delay_timer);
 }
}
