
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct softnet_data {struct softnet_data* rps_ipi_list; struct softnet_data* rps_ipi_next; } ;


 int NET_RX_SOFTIRQ ;
 int __raise_softirq_irqoff (int ) ;
 int softnet_data ;
 struct softnet_data* this_cpu_ptr (int *) ;

__attribute__((used)) static int rps_ipi_queued(struct softnet_data *sd)
{
 return 0;
}
