
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int * chip; struct irq_data* parent_data; } ;
struct irq_desc {int depth; char const* name; int * action; scalar_t__ handle_irq; struct irq_data irq_data; } ;
typedef scalar_t__ irq_flow_handler_t ;


 int IRQ_RESEND ;
 unsigned int IRQ_TYPE_NONE ;
 scalar_t__ WARN_ON (int) ;
 int __irq_set_trigger (struct irq_desc*,unsigned int) ;
 int chained_action ;
 scalar_t__ handle_bad_irq ;
 int irq_activate_and_startup (struct irq_desc*,int ) ;
 int irq_settings_set_noprobe (struct irq_desc*) ;
 int irq_settings_set_norequest (struct irq_desc*) ;
 int irq_settings_set_nothread (struct irq_desc*) ;
 int irq_state_set_disabled (struct irq_desc*) ;
 unsigned int irqd_get_trigger_type (struct irq_data*) ;
 int mask_ack_irq (struct irq_desc*) ;
 int no_irq_chip ;

__attribute__((used)) static void
__irq_do_set_handler(struct irq_desc *desc, irq_flow_handler_t handle,
       int is_chained, const char *name)
{
 if (!handle) {
  handle = handle_bad_irq;
 } else {
  struct irq_data *irq_data = &desc->irq_data;
  if (WARN_ON(!irq_data || irq_data->chip == &no_irq_chip))
   return;
 }


 if (handle == handle_bad_irq) {
  if (desc->irq_data.chip != &no_irq_chip)
   mask_ack_irq(desc);
  irq_state_set_disabled(desc);
  if (is_chained)
   desc->action = ((void*)0);
  desc->depth = 1;
 }
 desc->handle_irq = handle;
 desc->name = name;

 if (handle != handle_bad_irq && is_chained) {
  unsigned int type = irqd_get_trigger_type(&desc->irq_data);
  if (type != IRQ_TYPE_NONE) {
   __irq_set_trigger(desc, type);
   desc->handle_irq = handle;
  }

  irq_settings_set_noprobe(desc);
  irq_settings_set_norequest(desc);
  irq_settings_set_nothread(desc);
  desc->action = &chained_action;
  irq_activate_and_startup(desc, IRQ_RESEND);
 }
}
