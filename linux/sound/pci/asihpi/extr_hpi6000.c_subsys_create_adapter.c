
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_13__ {int adapter_index; int adapter_type; scalar_t__ data; } ;
struct TYPE_14__ {TYPE_6__ s; } ;
struct hpi_response {scalar_t__ error; TYPE_7__ u; scalar_t__ specific_error; } ;
struct TYPE_8__ {int * pci; } ;
struct TYPE_9__ {TYPE_1__ r; } ;
struct TYPE_10__ {TYPE_2__ resource; } ;
struct TYPE_11__ {TYPE_3__ s; } ;
struct hpi_message {TYPE_4__ u; } ;
struct hpi_hw_obj {TYPE_5__* ado; } ;
struct hpi_adapter_obj {int index; int type; struct hpi_hw_obj* priv; int pci; } ;
typedef int ao ;
struct TYPE_12__ {struct hpi_adapter_obj* pa_parent_adapter; } ;


 int ERROR ;
 int GFP_KERNEL ;
 int HPI_DEBUG_LOG (int ,char*) ;
 scalar_t__ HPI_ERROR_BACKEND_BASE ;
 scalar_t__ HPI_ERROR_BAD_ADAPTER ;
 scalar_t__ HPI_ERROR_DSP_BOOTLOAD ;
 scalar_t__ HPI_ERROR_MEMORY_ALLOC ;
 scalar_t__ MAX_DSPS ;
 int VERBOSE ;
 scalar_t__ create_adapter_obj (struct hpi_adapter_obj*,scalar_t__*) ;
 int delete_adapter_obj (struct hpi_adapter_obj*) ;
 struct hpi_adapter_obj* hpi_find_adapter (int ) ;
 struct hpi_hw_obj* kzalloc (int,int ) ;
 int memset (struct hpi_adapter_obj*,int ,int) ;

__attribute__((used)) static void subsys_create_adapter(struct hpi_message *phm,
 struct hpi_response *phr)
{

 struct hpi_adapter_obj ao;
 struct hpi_adapter_obj *pao;
 u32 os_error_code;
 u16 err = 0;
 u32 dsp_index = 0;

 HPI_DEBUG_LOG(VERBOSE, "subsys_create_adapter\n");

 memset(&ao, 0, sizeof(ao));

 ao.priv = kzalloc(sizeof(struct hpi_hw_obj), GFP_KERNEL);
 if (!ao.priv) {
  HPI_DEBUG_LOG(ERROR, "can't get mem for adapter object\n");
  phr->error = HPI_ERROR_MEMORY_ALLOC;
  return;
 }


 ao.pci = *phm->u.s.resource.r.pci;

 err = create_adapter_obj(&ao, &os_error_code);
 if (err) {
  delete_adapter_obj(&ao);
  if (err >= HPI_ERROR_BACKEND_BASE) {
   phr->error = HPI_ERROR_DSP_BOOTLOAD;
   phr->specific_error = err;
  } else {
   phr->error = err;
  }

  phr->u.s.data = os_error_code;
  return;
 }

 pao = hpi_find_adapter(ao.index);
 if (!pao) {

  HPI_DEBUG_LOG(ERROR, "lost adapter after boot\n");
  phr->error = HPI_ERROR_BAD_ADAPTER;
  return;
 }

 for (dsp_index = 0; dsp_index < MAX_DSPS; dsp_index++) {
  struct hpi_hw_obj *phw = pao->priv;
  phw->ado[dsp_index].pa_parent_adapter = pao;
 }

 phr->u.s.adapter_type = ao.type;
 phr->u.s.adapter_index = ao.index;
 phr->error = 0;
}
