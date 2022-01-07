
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int num_ports; struct dsa_port* ports; int * rtable; } ;
struct dsa_port {int dummy; } ;


 int DSA_MAX_SWITCHES ;
 int DSA_RTABLE_NONE ;
 scalar_t__ dsa_port_is_dsa (struct dsa_port*) ;
 int dsa_port_setup_routing_table (struct dsa_port*) ;

__attribute__((used)) static bool dsa_switch_setup_routing_table(struct dsa_switch *ds)
{
 bool complete = 1;
 struct dsa_port *dp;
 int i;

 for (i = 0; i < DSA_MAX_SWITCHES; i++)
  ds->rtable[i] = DSA_RTABLE_NONE;

 for (i = 0; i < ds->num_ports; i++) {
  dp = &ds->ports[i];

  if (dsa_port_is_dsa(dp)) {
   complete = dsa_port_setup_routing_table(dp);
   if (!complete)
    break;
  }
 }

 return complete;
}
