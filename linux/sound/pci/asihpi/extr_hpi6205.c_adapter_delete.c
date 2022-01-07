
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_response {scalar_t__ error; } ;
struct hpi_message {int dummy; } ;
struct hpi_hw_obj {int prHDCR; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;


 int C6205_BAR0_TIMER1_CTL ;
 int C6205_HDCR_WARMRESET ;
 scalar_t__ HPI_ERROR_INVALID_OBJ_INDEX ;
 int boot_loader_write_mem32 (struct hpi_adapter_obj*,int ,int ,int ) ;
 int delete_adapter_obj (struct hpi_adapter_obj*) ;
 int hpi_delete_adapter (struct hpi_adapter_obj*) ;
 int iowrite32 (int ,int ) ;

__attribute__((used)) static void adapter_delete(struct hpi_adapter_obj *pao,
 struct hpi_message *phm, struct hpi_response *phr)
{
 struct hpi_hw_obj *phw;

 if (!pao) {
  phr->error = HPI_ERROR_INVALID_OBJ_INDEX;
  return;
 }
 phw = pao->priv;


 boot_loader_write_mem32(pao, 0, C6205_BAR0_TIMER1_CTL, 0);

 iowrite32(C6205_HDCR_WARMRESET, phw->prHDCR);

 delete_adapter_obj(pao);
 hpi_delete_adapter(pao);
 phr->error = 0;
}
