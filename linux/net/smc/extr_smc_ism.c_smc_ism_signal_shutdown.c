
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union smcd_sw_event_info {int info; int code; int vlan_id; int uid; } ;
struct smc_link_group {int peer_gid; TYPE_2__* smcd; int vlan_id; int id; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* signal_event ) (TYPE_2__*,int ,int ,int ,int ) ;} ;


 int ISM_EVENT_CODE_SHUTDOWN ;
 int ISM_EVENT_REQUEST ;
 int ISM_EVENT_REQUEST_IR ;
 int SMC_LGR_ID_SIZE ;
 int memcpy (int ,int ,int ) ;
 int stub1 (TYPE_2__*,int ,int ,int ,int ) ;

int smc_ism_signal_shutdown(struct smc_link_group *lgr)
{
 int rc;
 union smcd_sw_event_info ev_info;

 memcpy(ev_info.uid, lgr->id, SMC_LGR_ID_SIZE);
 ev_info.vlan_id = lgr->vlan_id;
 ev_info.code = ISM_EVENT_REQUEST;
 rc = lgr->smcd->ops->signal_event(lgr->smcd, lgr->peer_gid,
       ISM_EVENT_REQUEST_IR,
       ISM_EVENT_CODE_SHUTDOWN,
       ev_info.info);
 return rc;
}
