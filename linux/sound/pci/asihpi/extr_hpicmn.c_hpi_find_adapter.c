
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct hpi_adapter_obj {scalar_t__ type; } ;
struct TYPE_2__ {struct hpi_adapter_obj* adapter; } ;


 int HPI_DEBUG_LOG (int ,char*,size_t) ;
 size_t HPI_MAX_ADAPTERS ;
 int VERBOSE ;
 TYPE_1__ adapters ;

struct hpi_adapter_obj *hpi_find_adapter(u16 adapter_index)
{
 struct hpi_adapter_obj *pao = ((void*)0);

 if (adapter_index >= HPI_MAX_ADAPTERS) {
  HPI_DEBUG_LOG(VERBOSE, "find_adapter invalid index %d\n",
   adapter_index);
  return ((void*)0);
 }

 pao = &adapters.adapter[adapter_index];
 if (pao->type != 0) {




  return pao;
 } else {




  return ((void*)0);
 }
}
