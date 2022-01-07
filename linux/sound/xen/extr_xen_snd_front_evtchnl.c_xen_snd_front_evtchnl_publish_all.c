
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xenbus_transaction {int dummy; } ;
struct xen_front_cfg_card {int num_pcm_instances; struct xen_front_cfg_pcm_instance* pcm_instances; } ;
struct xen_snd_front_info {int xb_dev; TYPE_2__* evt_pairs; struct xen_front_cfg_card cfg; } ;
struct xen_front_cfg_pcm_instance {int num_streams_pb; int num_streams_cap; TYPE_3__* streams_cap; TYPE_1__* streams_pb; } ;
struct TYPE_6__ {int index; int xenstore_path; } ;
struct TYPE_5__ {int evt; int req; } ;
struct TYPE_4__ {int index; int xenstore_path; } ;


 int EAGAIN ;
 int XENSND_FIELD_EVT_CHNL ;
 int XENSND_FIELD_EVT_EVT_CHNL ;
 int XENSND_FIELD_EVT_RING_REF ;
 int XENSND_FIELD_RING_REF ;
 int evtchnl_publish (struct xenbus_transaction,int *,int ,int ,int ) ;
 int xenbus_dev_fatal (int ,int,char*) ;
 int xenbus_transaction_end (struct xenbus_transaction,int) ;
 int xenbus_transaction_start (struct xenbus_transaction*) ;

int xen_snd_front_evtchnl_publish_all(struct xen_snd_front_info *front_info)
{
 struct xen_front_cfg_card *cfg = &front_info->cfg;
 struct xenbus_transaction xbt;
 int ret, d;

again:
 ret = xenbus_transaction_start(&xbt);
 if (ret < 0) {
  xenbus_dev_fatal(front_info->xb_dev, ret,
     "starting transaction");
  return ret;
 }

 for (d = 0; d < cfg->num_pcm_instances; d++) {
  struct xen_front_cfg_pcm_instance *pcm_instance;
  int s, index;

  pcm_instance = &cfg->pcm_instances[d];

  for (s = 0; s < pcm_instance->num_streams_pb; s++) {
   index = pcm_instance->streams_pb[s].index;

   ret = evtchnl_publish(xbt,
           &front_info->evt_pairs[index].req,
           pcm_instance->streams_pb[s].xenstore_path,
           XENSND_FIELD_RING_REF,
           XENSND_FIELD_EVT_CHNL);
   if (ret < 0)
    goto fail;

   ret = evtchnl_publish(xbt,
           &front_info->evt_pairs[index].evt,
           pcm_instance->streams_pb[s].xenstore_path,
           XENSND_FIELD_EVT_RING_REF,
           XENSND_FIELD_EVT_EVT_CHNL);
   if (ret < 0)
    goto fail;
  }

  for (s = 0; s < pcm_instance->num_streams_cap; s++) {
   index = pcm_instance->streams_cap[s].index;

   ret = evtchnl_publish(xbt,
           &front_info->evt_pairs[index].req,
           pcm_instance->streams_cap[s].xenstore_path,
           XENSND_FIELD_RING_REF,
           XENSND_FIELD_EVT_CHNL);
   if (ret < 0)
    goto fail;

   ret = evtchnl_publish(xbt,
           &front_info->evt_pairs[index].evt,
           pcm_instance->streams_cap[s].xenstore_path,
           XENSND_FIELD_EVT_RING_REF,
           XENSND_FIELD_EVT_EVT_CHNL);
   if (ret < 0)
    goto fail;
  }
 }
 ret = xenbus_transaction_end(xbt, 0);
 if (ret < 0) {
  if (ret == -EAGAIN)
   goto again;

  xenbus_dev_fatal(front_info->xb_dev, ret,
     "completing transaction");
  goto fail_to_end;
 }
 return 0;
fail:
 xenbus_transaction_end(xbt, 1);
fail_to_end:
 xenbus_dev_fatal(front_info->xb_dev, ret, "writing XenStore");
 return ret;
}
