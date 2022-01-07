
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union smcd_sw_event_info {int info; int code; int vlan_id; } ;
struct TYPE_6__ {int code; int tok; int info; } ;
struct smc_ism_event_work {TYPE_2__ event; TYPE_3__* smcd; } ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* signal_event ) (TYPE_3__*,int ,int ,int const,int ) ;} ;




 int ISM_EVENT_REQUEST ;
 int ISM_EVENT_REQUEST_IR ;
 int ISM_EVENT_RESPONSE ;
 int smc_smcd_terminate (TYPE_3__*,int ,int ) ;
 int stub1 (TYPE_3__*,int ,int ,int const,int ) ;

__attribute__((used)) static void smcd_handle_sw_event(struct smc_ism_event_work *wrk)
{
 union smcd_sw_event_info ev_info;

 ev_info.info = wrk->event.info;
 switch (wrk->event.code) {
 case 129:
  smc_smcd_terminate(wrk->smcd, wrk->event.tok, ev_info.vlan_id);
  break;
 case 128:
  if (ev_info.code == ISM_EVENT_REQUEST) {
   ev_info.code = ISM_EVENT_RESPONSE;
   wrk->smcd->ops->signal_event(wrk->smcd,
           wrk->event.tok,
           ISM_EVENT_REQUEST_IR,
           128,
           ev_info.info);
   }
  break;
 }
}
