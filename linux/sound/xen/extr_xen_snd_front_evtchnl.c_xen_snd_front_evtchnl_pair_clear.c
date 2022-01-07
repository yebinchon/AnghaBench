
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ring_io_lock; scalar_t__ evt_next_id; } ;
struct TYPE_3__ {int ring_io_lock; scalar_t__ evt_next_id; } ;
struct xen_snd_front_evtchnl_pair {TYPE_2__ evt; TYPE_1__ req; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void xen_snd_front_evtchnl_pair_clear(struct xen_snd_front_evtchnl_pair *evt_pair)
{
 mutex_lock(&evt_pair->req.ring_io_lock);
 evt_pair->req.evt_next_id = 0;
 mutex_unlock(&evt_pair->req.ring_io_lock);

 mutex_lock(&evt_pair->evt.ring_io_lock);
 evt_pair->evt.evt_next_id = 0;
 mutex_unlock(&evt_pair->evt.ring_io_lock);
}
