
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct softnet_data {int csd; int cpu; struct softnet_data* rps_ipi_next; } ;


 scalar_t__ cpu_online (int ) ;
 int smp_call_function_single_async (int ,int *) ;

__attribute__((used)) static void net_rps_send_ipi(struct softnet_data *remsd)
{
}
