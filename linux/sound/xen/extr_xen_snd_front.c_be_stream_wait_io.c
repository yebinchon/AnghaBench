
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int resp_status; int completion; } ;
struct TYPE_4__ {TYPE_1__ req; } ;
struct xen_snd_front_evtchnl {TYPE_2__ u; } ;


 int ETIMEDOUT ;
 int VSND_WAIT_BACK_MS ;
 int msecs_to_jiffies (int ) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int be_stream_wait_io(struct xen_snd_front_evtchnl *evtchnl)
{
 if (wait_for_completion_timeout(&evtchnl->u.req.completion,
   msecs_to_jiffies(VSND_WAIT_BACK_MS)) <= 0)
  return -ETIMEDOUT;

 return evtchnl->u.req.resp_status;
}
