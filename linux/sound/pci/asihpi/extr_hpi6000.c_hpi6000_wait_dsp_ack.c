
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct hpi_hw_obj {struct dsp_obj* ado; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;
struct dsp_obj {int prHPI_control; } ;


 int H6READ ;
 int HPI_HIF_ADDR (int ) ;
 short HPI_HIF_ERROR_MASK ;
 int TIMEOUT ;
 int dsp_ack ;
 int hpi6000_check_PCI2040_error_flag (struct hpi_adapter_obj*,int ) ;
 int hpi_read_word (struct dsp_obj*,int ) ;
 int ioread32 (int ) ;

__attribute__((used)) static short hpi6000_wait_dsp_ack(struct hpi_adapter_obj *pao, u16 dsp_index,
 u32 ack_value)
{
 struct hpi_hw_obj *phw = pao->priv;
 struct dsp_obj *pdo = &phw->ado[dsp_index];
 u32 ack = 0L;
 u32 timeout;
 u32 hPIC = 0L;


 timeout = TIMEOUT;
 while (--timeout) {
  hPIC = ioread32(pdo->prHPI_control);
  if (hPIC & 0x04)
   break;
 }
 if (timeout == 0)
  return HPI_HIF_ERROR_MASK;


 timeout = TIMEOUT;
 while (--timeout) {

  ack = hpi_read_word(pdo, HPI_HIF_ADDR(dsp_ack));
  if (ack == ack_value)
   break;
  if ((ack & HPI_HIF_ERROR_MASK)
   && !hpi6000_check_PCI2040_error_flag(pao, H6READ))
   break;


 }
 if (ack & HPI_HIF_ERROR_MASK)


  ack = HPI_HIF_ERROR_MASK;

 if (timeout == 0)
  ack = HPI_HIF_ERROR_MASK;
 return (short)ack;
}
