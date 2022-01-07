
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int ring_io_lock; } ;
struct TYPE_4__ {int state; int ring_io_lock; } ;
struct xen_snd_front_evtchnl_pair {TYPE_1__ evt; TYPE_2__ req; } ;
typedef enum xen_snd_front_evtchnl_state { ____Placeholder_xen_snd_front_evtchnl_state } xen_snd_front_evtchnl_state ;


 int EVTCHNL_STATE_CONNECTED ;
 int EVTCHNL_STATE_DISCONNECTED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void xen_snd_front_evtchnl_pair_set_connected(struct xen_snd_front_evtchnl_pair *evt_pair,
           bool is_connected)
{
 enum xen_snd_front_evtchnl_state state;

 if (is_connected)
  state = EVTCHNL_STATE_CONNECTED;
 else
  state = EVTCHNL_STATE_DISCONNECTED;

 mutex_lock(&evt_pair->req.ring_io_lock);
 evt_pair->req.state = state;
 mutex_unlock(&evt_pair->req.ring_io_lock);

 mutex_lock(&evt_pair->evt.ring_io_lock);
 evt_pair->evt.state = state;
 mutex_unlock(&evt_pair->evt.ring_io_lock);
}
