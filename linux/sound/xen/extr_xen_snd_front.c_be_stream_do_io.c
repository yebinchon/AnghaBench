
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int completion; } ;
struct TYPE_4__ {TYPE_1__ req; } ;
struct xen_snd_front_evtchnl {scalar_t__ state; TYPE_2__ u; } ;


 int EIO ;
 scalar_t__ EVTCHNL_STATE_CONNECTED ;
 int reinit_completion (int *) ;
 scalar_t__ unlikely (int) ;
 int xen_snd_front_evtchnl_flush (struct xen_snd_front_evtchnl*) ;

__attribute__((used)) static int be_stream_do_io(struct xen_snd_front_evtchnl *evtchnl)
{
 if (unlikely(evtchnl->state != EVTCHNL_STATE_CONNECTED))
  return -EIO;

 reinit_completion(&evtchnl->u.req.completion);
 xen_snd_front_evtchnl_flush(evtchnl);
 return 0;
}
