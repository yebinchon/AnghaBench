
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_hw_obj {scalar_t__ dw2040_HPICSR; int p_cache; } ;
struct hpi_adapter_obj {scalar_t__ has_control_cache; struct hpi_hw_obj* priv; } ;


 scalar_t__ HPI_RESET ;
 int hpi_free_control_cache (int ) ;
 int iowrite32 (int,scalar_t__) ;
 int kfree (struct hpi_hw_obj*) ;

__attribute__((used)) static void delete_adapter_obj(struct hpi_adapter_obj *pao)
{
 struct hpi_hw_obj *phw = pao->priv;

 if (pao->has_control_cache)
  hpi_free_control_cache(phw->p_cache);


 iowrite32(0x0003000F, phw->dw2040_HPICSR + HPI_RESET);

 kfree(phw);
}
