
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int args_count; int args; int np; } ;
struct irq_fwspec {int dummy; } ;


 unsigned int irq_create_fwspec_mapping (struct irq_fwspec*) ;
 int of_phandle_args_to_fwspec (int ,int ,int ,struct irq_fwspec*) ;

unsigned int irq_create_of_mapping(struct of_phandle_args *irq_data)
{
 struct irq_fwspec fwspec;

 of_phandle_args_to_fwspec(irq_data->np, irq_data->args,
      irq_data->args_count, &fwspec);

 return irq_create_fwspec_mapping(&fwspec);
}
