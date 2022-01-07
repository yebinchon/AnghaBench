
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hpi_hw_obj {int prHDCR; struct bus_master_interface* p_interface_buffer; } ;
struct bus_master_interface {int host_cmd; } ;


 scalar_t__ C6205_HDCR_DSPINT ;
 int ioread32 (int ) ;
 int iowrite32 (int ,int ) ;
 int wmb () ;

__attribute__((used)) static void send_dsp_command(struct hpi_hw_obj *phw, int cmd)
{
 struct bus_master_interface *interface = phw->p_interface_buffer;
 u32 r;

 interface->host_cmd = cmd;
 wmb();

 r = ioread32(phw->prHDCR);
 r |= (u32)C6205_HDCR_DSPINT;
 iowrite32(r, phw->prHDCR);
 r &= ~(u32)C6205_HDCR_DSPINT;
 iowrite32(r, phw->prHDCR);
}
