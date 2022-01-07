
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int dummy; } ;


 int ____napi_schedule (int ,struct napi_struct*) ;
 int softnet_data ;
 int this_cpu_ptr (int *) ;

void __napi_schedule_irqoff(struct napi_struct *n)
{
 ____napi_schedule(this_cpu_ptr(&softnet_data), n);
}
