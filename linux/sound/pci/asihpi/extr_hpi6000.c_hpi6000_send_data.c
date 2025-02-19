
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef long u32 ;
typedef size_t u16 ;
struct hpi_response {int dummy; } ;
struct TYPE_5__ {long data_size; scalar_t__ pb_data; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ d; } ;
struct hpi_message {TYPE_4__ u; } ;
struct hpi_hw_obj {struct dsp_obj* ado; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;
struct dsp_obj {int dummy; } ;


 int H6READ ;
 short HPI6000_ERROR_SEND_DATA_ACK ;
 short HPI6000_ERROR_SEND_DATA_ADR ;
 short HPI6000_ERROR_SEND_DATA_CMD ;
 short HPI6000_ERROR_SEND_DATA_IDLECMD ;
 short HPI6000_ERROR_SEND_DATA_IDLE_TIMEOUT ;
 short HPI6000_ERROR_SEND_DATA_TIMEOUT ;
 short HPI6000_ERROR_SEND_DATA_WRITE ;
 int HPI_HIF_ADDR (long) ;
 size_t HPI_HIF_ERROR_MASK ;
 int HPI_HIF_IDLE ;
 int HPI_HIF_SEND_DATA ;
 scalar_t__ hpi6000_check_PCI2040_error_flag (struct hpi_adapter_obj*,int ) ;
 scalar_t__ hpi6000_dsp_block_write32 (struct hpi_adapter_obj*,size_t,long,long*,long) ;
 int hpi6000_send_data_check_adr (long,long) ;
 int hpi6000_send_dsp_interrupt (struct dsp_obj*) ;
 scalar_t__ hpi6000_send_host_command (struct hpi_adapter_obj*,size_t,int ) ;
 size_t hpi6000_wait_dsp_ack (struct hpi_adapter_obj*,size_t,int ) ;
 long hpi_read_word (struct dsp_obj*,int ) ;

__attribute__((used)) static short hpi6000_send_data(struct hpi_adapter_obj *pao, u16 dsp_index,
 struct hpi_message *phm, struct hpi_response *phr)
{
 struct hpi_hw_obj *phw = pao->priv;
 struct dsp_obj *pdo = &phw->ado[dsp_index];
 u32 data_sent = 0;
 u16 ack;
 u32 length, address;
 u32 *p_data = (u32 *)phm->u.d.u.data.pb_data;
 u16 time_out = 8;

 (void)phr;


 while ((data_sent < (phm->u.d.u.data.data_size & ~3L))
  && --time_out) {
  ack = hpi6000_wait_dsp_ack(pao, dsp_index, HPI_HIF_IDLE);
  if (ack & HPI_HIF_ERROR_MASK)
   return HPI6000_ERROR_SEND_DATA_IDLE_TIMEOUT;

  if (hpi6000_send_host_command(pao, dsp_index,
    HPI_HIF_SEND_DATA))
   return HPI6000_ERROR_SEND_DATA_CMD;

  hpi6000_send_dsp_interrupt(pdo);

  ack = hpi6000_wait_dsp_ack(pao, dsp_index, HPI_HIF_SEND_DATA);

  if (ack & HPI_HIF_ERROR_MASK)
   return HPI6000_ERROR_SEND_DATA_ACK;

  do {

   address = hpi_read_word(pdo, HPI_HIF_ADDR(address));

   length = hpi_read_word(pdo, HPI_HIF_ADDR(length));
  } while (hpi6000_check_PCI2040_error_flag(pao, H6READ));

  if (!hpi6000_send_data_check_adr(address, length))
   return HPI6000_ERROR_SEND_DATA_ADR;






  {
   u32 len = length;
   u32 blk_len = 512;
   while (len) {
    if (len < blk_len)
     blk_len = len;
    if (hpi6000_dsp_block_write32(pao, dsp_index,
      address, p_data, blk_len))
     return HPI6000_ERROR_SEND_DATA_WRITE;
    address += blk_len * 4;
    p_data += blk_len;
    len -= blk_len;
   }
  }

  if (hpi6000_send_host_command(pao, dsp_index, HPI_HIF_IDLE))
   return HPI6000_ERROR_SEND_DATA_IDLECMD;

  hpi6000_send_dsp_interrupt(pdo);

  data_sent += length * 4;
 }
 if (!time_out)
  return HPI6000_ERROR_SEND_DATA_TIMEOUT;
 return 0;
}
