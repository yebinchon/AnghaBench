
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xensnd_query_hw_param {int dummy; } ;
struct TYPE_5__ {struct xensnd_query_hw_param hw_param; } ;
struct xensnd_req {TYPE_1__ op; } ;
struct TYPE_6__ {struct xensnd_query_hw_param hw_param; } ;
struct TYPE_8__ {int req_io_lock; TYPE_2__ resp; } ;
struct TYPE_7__ {TYPE_4__ req; } ;
struct xen_snd_front_evtchnl {TYPE_3__ u; int ring_io_lock; } ;


 int XENSND_OP_HW_PARAM_QUERY ;
 int be_stream_do_io (struct xen_snd_front_evtchnl*) ;
 struct xensnd_req* be_stream_prepare_req (struct xen_snd_front_evtchnl*,int ) ;
 int be_stream_wait_io (struct xen_snd_front_evtchnl*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int xen_snd_front_stream_query_hw_param(struct xen_snd_front_evtchnl *evtchnl,
     struct xensnd_query_hw_param *hw_param_req,
     struct xensnd_query_hw_param *hw_param_resp)
{
 struct xensnd_req *req;
 int ret;

 mutex_lock(&evtchnl->u.req.req_io_lock);

 mutex_lock(&evtchnl->ring_io_lock);
 req = be_stream_prepare_req(evtchnl, XENSND_OP_HW_PARAM_QUERY);
 req->op.hw_param = *hw_param_req;
 mutex_unlock(&evtchnl->ring_io_lock);

 ret = be_stream_do_io(evtchnl);

 if (ret == 0)
  ret = be_stream_wait_io(evtchnl);

 if (ret == 0)
  *hw_param_resp = evtchnl->u.req.resp.hw_param;

 mutex_unlock(&evtchnl->u.req.req_io_lock);
 return ret;
}
