
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hpi_adapter_obj {size_t index; int type; } ;
struct TYPE_6__ {TYPE_1__* adapter; int gw_num_adapters; } ;
struct TYPE_5__ {scalar_t__ type; } ;


 int ERROR ;
 int HPI_DEBUG_LOG (int ,char*) ;
 TYPE_2__ adapters ;
 int hpios_alistlock_lock (TYPE_2__*) ;
 int hpios_alistlock_unlock (TYPE_2__*) ;
 int memset (TYPE_1__*,int ,int) ;

void hpi_delete_adapter(struct hpi_adapter_obj *pao)
{
 if (!pao->type) {
  HPI_DEBUG_LOG(ERROR, "removing null adapter?\n");
  return;
 }

 hpios_alistlock_lock(&adapters);
 if (adapters.adapter[pao->index].type)
  adapters.gw_num_adapters--;
 memset(&adapters.adapter[pao->index], 0, sizeof(adapters.adapter[0]));
 hpios_alistlock_unlock(&adapters);
}
