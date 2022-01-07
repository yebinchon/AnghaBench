
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hpi_hw_obj {int prHSR; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;


 int C6205_HSR_INTSRC ;
 int HPI_IRQ_MIXER ;
 int HPI_IRQ_NONE ;
 int ioread32 (int ) ;
 int iowrite32 (int,int ) ;

__attribute__((used)) static int adapter_irq_query_and_clear(struct hpi_adapter_obj *pao,
 u32 message)
{
 struct hpi_hw_obj *phw = pao->priv;
 u32 hsr = 0;

 hsr = ioread32(phw->prHSR);
 if (hsr & C6205_HSR_INTSRC) {

  iowrite32(C6205_HSR_INTSRC, phw->prHSR);
  return HPI_IRQ_MIXER;
 }

 return HPI_IRQ_NONE;
}
