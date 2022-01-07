
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_mc_method {unsigned long expires; int rcast; scalar_t__ mandatory; } ;
struct tipc_bc_base {int bc_threshold; scalar_t__ force_rcast; scalar_t__ force_bcast; int rcast_support; int bcast_support; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int capabilities; } ;


 int TIPC_MCAST_RBCTL ;
 unsigned long TIPC_METHOD_EXPIRE ;
 unsigned long jiffies ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 struct tipc_bc_base* tipc_bc_base (struct net*) ;
 TYPE_1__* tipc_net (struct net*) ;

__attribute__((used)) static void tipc_bcast_select_xmit_method(struct net *net, int dests,
       struct tipc_mc_method *method)
{
 struct tipc_bc_base *bb = tipc_bc_base(net);
 unsigned long exp = method->expires;


 if (!bb->bcast_support) {
  method->rcast = 1;
  return;
 }

 if (!bb->rcast_support) {
  method->rcast = 0;
  return;
 }

 method->expires = jiffies + TIPC_METHOD_EXPIRE;
 if (method->mandatory)
  return;

 if (!(tipc_net(net)->capabilities & TIPC_MCAST_RBCTL) &&
     time_before(jiffies, exp))
  return;


 if (bb->force_bcast) {
  method->rcast = 0;
  return;
 }

 if (bb->force_rcast) {
  method->rcast = 1;
  return;
 }


 method->rcast = dests <= bb->bc_threshold;
}
