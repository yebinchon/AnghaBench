
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_snd_front_info {int num_evt_pairs; TYPE_1__* evt_pairs; } ;
struct TYPE_2__ {int evt; int req; } ;


 int evtchnl_free (struct xen_snd_front_info*,int *) ;
 int kfree (TYPE_1__*) ;

void xen_snd_front_evtchnl_free_all(struct xen_snd_front_info *front_info)
{
 int i;

 if (!front_info->evt_pairs)
  return;

 for (i = 0; i < front_info->num_evt_pairs; i++) {
  evtchnl_free(front_info, &front_info->evt_pairs[i].req);
  evtchnl_free(front_info, &front_info->evt_pairs[i].evt);
 }

 kfree(front_info->evt_pairs);
 front_info->evt_pairs = ((void*)0);
}
