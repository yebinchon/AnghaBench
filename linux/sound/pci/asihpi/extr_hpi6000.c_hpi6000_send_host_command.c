
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct hpi_hw_obj {struct dsp_obj* ado; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;
struct dsp_obj {int prHPI_control; } ;


 int H6WRITE ;
 int HPI_HIF_ADDR (scalar_t__) ;
 scalar_t__ TIMEOUT ;
 scalar_t__ hpi6000_check_PCI2040_error_flag (struct hpi_adapter_obj*,int ) ;
 int hpi_set_address (struct dsp_obj*,int ) ;
 int hpi_write_word (struct dsp_obj*,int ,scalar_t__) ;
 int iowrite32 (int,int ) ;

__attribute__((used)) static short hpi6000_send_host_command(struct hpi_adapter_obj *pao,
 u16 dsp_index, u32 host_cmd)
{
 struct hpi_hw_obj *phw = pao->priv;
 struct dsp_obj *pdo = &phw->ado[dsp_index];
 u32 timeout = TIMEOUT;


 do {
  hpi_write_word(pdo, HPI_HIF_ADDR(host_cmd), host_cmd);

  hpi_set_address(pdo, HPI_HIF_ADDR(host_cmd));
 } while (hpi6000_check_PCI2040_error_flag(pao, H6WRITE) && --timeout);


 iowrite32(0x00040004, pdo->prHPI_control);

 if (timeout)
  return 0;
 else
  return 1;
}
