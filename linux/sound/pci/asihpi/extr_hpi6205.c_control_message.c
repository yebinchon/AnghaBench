
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct hpi_response {int error; } ;
struct TYPE_3__ {int attribute; } ;
struct TYPE_4__ {TYPE_1__ c; } ;
struct hpi_message {int function; TYPE_2__ u; } ;
struct hpi_hw_obj {int p_cache; } ;
struct hpi_adapter_obj {int has_control_cache; struct hpi_hw_obj* priv; } ;





 int HPI_ERROR_CONTROL_CACHING ;
 int HPI_ERROR_INVALID_FUNC ;
 int HPI_METER_PEAK ;
 int hpi_check_control_cache (int ,struct hpi_message*,struct hpi_response*) ;
 int hpi_cmn_control_cache_sync_to_msg (int ,struct hpi_message*,struct hpi_response*) ;
 int hw_message (struct hpi_adapter_obj*,struct hpi_message*,struct hpi_response*) ;
 int rmb () ;

__attribute__((used)) static void control_message(struct hpi_adapter_obj *pao,
 struct hpi_message *phm, struct hpi_response *phr)
{

 struct hpi_hw_obj *phw = pao->priv;
 u16 pending_cache_error = 0;

 switch (phm->function) {
 case 129:
  if (pao->has_control_cache) {
   rmb();
   if (hpi_check_control_cache(phw->p_cache, phm, phr)) {
    break;
   } else if (phm->u.c.attribute == HPI_METER_PEAK) {
    pending_cache_error =
     HPI_ERROR_CONTROL_CACHING;
   }
  }
  hw_message(pao, phm, phr);
  if (pending_cache_error && !phr->error)
   phr->error = pending_cache_error;
  break;
 case 130:
  hw_message(pao, phm, phr);
  break;
 case 128:
  hw_message(pao, phm, phr);
  if (pao->has_control_cache)
   hpi_cmn_control_cache_sync_to_msg(phw->p_cache, phm,
    phr);
  break;
 default:
  phr->error = HPI_ERROR_INVALID_FUNC;
  break;
 }
}
