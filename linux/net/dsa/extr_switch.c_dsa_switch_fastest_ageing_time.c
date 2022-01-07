
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int num_ports; struct dsa_port* ports; } ;
struct dsa_port {unsigned int ageing_time; } ;



__attribute__((used)) static unsigned int dsa_switch_fastest_ageing_time(struct dsa_switch *ds,
         unsigned int ageing_time)
{
 int i;

 for (i = 0; i < ds->num_ports; ++i) {
  struct dsa_port *dp = &ds->ports[i];

  if (dp->ageing_time && dp->ageing_time < ageing_time)
   ageing_time = dp->ageing_time;
 }

 return ageing_time;
}
