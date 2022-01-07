
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
struct TYPE_5__ {unsigned int pcm_channels; unsigned int pcm_rate; int gref_directory; void* period_sz; void* buffer_sz; int pcm_format; } ;
struct TYPE_6__ {TYPE_1__ open; } ;
struct xensnd_req {TYPE_2__ op; } ;
struct TYPE_7__ {int req_io_lock; } ;
struct TYPE_8__ {TYPE_3__ req; } ;
struct xen_snd_front_evtchnl {TYPE_4__ u; int ring_io_lock; } ;
struct xen_front_pgdir_shbuf {int dummy; } ;


 int XENSND_OP_OPEN ;
 int be_stream_do_io (struct xen_snd_front_evtchnl*) ;
 struct xensnd_req* be_stream_prepare_req (struct xen_snd_front_evtchnl*,int ) ;
 int be_stream_wait_io (struct xen_snd_front_evtchnl*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xen_front_pgdir_shbuf_get_dir_start (struct xen_front_pgdir_shbuf*) ;

int xen_snd_front_stream_prepare(struct xen_snd_front_evtchnl *evtchnl,
     struct xen_front_pgdir_shbuf *shbuf,
     u8 format, unsigned int channels,
     unsigned int rate, u32 buffer_sz,
     u32 period_sz)
{
 struct xensnd_req *req;
 int ret;

 mutex_lock(&evtchnl->u.req.req_io_lock);

 mutex_lock(&evtchnl->ring_io_lock);
 req = be_stream_prepare_req(evtchnl, XENSND_OP_OPEN);
 req->op.open.pcm_format = format;
 req->op.open.pcm_channels = channels;
 req->op.open.pcm_rate = rate;
 req->op.open.buffer_sz = buffer_sz;
 req->op.open.period_sz = period_sz;
 req->op.open.gref_directory =
  xen_front_pgdir_shbuf_get_dir_start(shbuf);
 mutex_unlock(&evtchnl->ring_io_lock);

 ret = be_stream_do_io(evtchnl);

 if (ret == 0)
  ret = be_stream_wait_io(evtchnl);

 mutex_unlock(&evtchnl->u.req.req_io_lock);
 return ret;
}
