
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num_adapters; } ;
struct TYPE_6__ {TYPE_1__ s; } ;
struct hpi_response {int error; TYPE_2__ u; } ;
struct hpi_message {int function; } ;
struct TYPE_7__ {int gw_num_adapters; } ;


 int HPI_ERROR_INVALID_FUNC ;
 int HPI_OBJ_SUBSYSTEM ;







 TYPE_3__ adapters ;
 int hpi_init_response (struct hpi_response*,int ,int,int ) ;
 int hpios_alistlock_init (TYPE_3__*) ;
 int subsys_get_adapter (struct hpi_message*,struct hpi_response*) ;
 int wipe_adapter_list () ;

__attribute__((used)) static void subsys_message(struct hpi_message *phm, struct hpi_response *phr)
{
 hpi_init_response(phr, HPI_OBJ_SUBSYSTEM, phm->function, 0);

 switch (phm->function) {
 case 128:
 case 134:
 case 131:
  break;
 case 132:
  wipe_adapter_list();
  hpios_alistlock_init(&adapters);
  break;
 case 130:
  subsys_get_adapter(phm, phr);
  break;
 case 129:
  phr->u.s.num_adapters = adapters.gw_num_adapters;
  break;
 case 133:
  break;
 default:
  phr->error = HPI_ERROR_INVALID_FUNC;
  break;
 }
}
