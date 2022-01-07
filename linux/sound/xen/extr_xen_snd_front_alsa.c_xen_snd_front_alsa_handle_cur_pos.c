
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct xen_snd_front_pcm_stream_info {int be_cur_frame; int out_frames; int hw_ptr; } ;
struct TYPE_4__ {struct snd_pcm_substream* substream; } ;
struct TYPE_5__ {TYPE_1__ evt; } ;
struct xen_snd_front_evtchnl {TYPE_2__ u; } ;
struct snd_pcm_substream {TYPE_3__* runtime; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_6__ {int buffer_size; int period_size; } ;


 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int bytes_to_frames (TYPE_3__*,int ) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 struct xen_snd_front_pcm_stream_info* stream_get (struct snd_pcm_substream*) ;

void xen_snd_front_alsa_handle_cur_pos(struct xen_snd_front_evtchnl *evtchnl,
           u64 pos_bytes)
{
 struct snd_pcm_substream *substream = evtchnl->u.evt.substream;
 struct xen_snd_front_pcm_stream_info *stream = stream_get(substream);
 snd_pcm_uframes_t delta, new_hw_ptr, cur_frame;

 cur_frame = bytes_to_frames(substream->runtime, pos_bytes);

 delta = cur_frame - stream->be_cur_frame;
 stream->be_cur_frame = cur_frame;

 new_hw_ptr = (snd_pcm_uframes_t)atomic_read(&stream->hw_ptr);
 new_hw_ptr = (new_hw_ptr + delta) % substream->runtime->buffer_size;
 atomic_set(&stream->hw_ptr, (int)new_hw_ptr);

 stream->out_frames += delta;
 if (stream->out_frames > substream->runtime->period_size) {
  stream->out_frames %= substream->runtime->period_size;
  snd_pcm_period_elapsed(substream);
 }
}
