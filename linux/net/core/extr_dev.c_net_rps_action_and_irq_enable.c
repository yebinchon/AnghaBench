
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct softnet_data {struct softnet_data* rps_ipi_list; } ;


 int local_irq_enable () ;
 int net_rps_send_ipi (struct softnet_data*) ;

__attribute__((used)) static void net_rps_action_and_irq_enable(struct softnet_data *sd)
{
  local_irq_enable();
}
