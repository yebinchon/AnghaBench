
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_hw_obj {struct bus_master_interface* p_interface_buffer; } ;
struct bus_master_interface {int dsp_ack; } ;


 int hpios_delay_micro_seconds (int) ;
 int rmb () ;

__attribute__((used)) static int wait_dsp_ack(struct hpi_hw_obj *phw, int state, int timeout_us)
{
 struct bus_master_interface *interface = phw->p_interface_buffer;
 int t = timeout_us / 4;

 rmb();
 while ((interface->dsp_ack != state) && --t) {
  hpios_delay_micro_seconds(4);
  rmb();
 }


 return t * 4;
}
