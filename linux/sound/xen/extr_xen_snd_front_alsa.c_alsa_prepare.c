
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct xen_snd_front_pcm_stream_info {int is_open; int shbuf; TYPE_3__* evt_pair; TYPE_2__* front_info; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; int channels; int format; } ;
struct TYPE_6__ {int req; } ;
struct TYPE_5__ {TYPE_1__* xb_dev; } ;
struct TYPE_4__ {int dev; } ;


 int dev_err (int *,char*,int ) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct xen_snd_front_pcm_stream_info* stream_get (struct snd_pcm_substream*) ;
 int to_sndif_format (int ) ;
 int xen_snd_front_stream_prepare (int *,int *,int,int ,int ,int ,int ) ;

__attribute__((used)) static int alsa_prepare(struct snd_pcm_substream *substream)
{
 struct xen_snd_front_pcm_stream_info *stream = stream_get(substream);

 if (!stream->is_open) {
  struct snd_pcm_runtime *runtime = substream->runtime;
  u8 sndif_format;
  int ret;

  ret = to_sndif_format(runtime->format);
  if (ret < 0) {
   dev_err(&stream->front_info->xb_dev->dev,
    "Unsupported sample format: %d\n",
    runtime->format);
   return ret;
  }
  sndif_format = ret;

  ret = xen_snd_front_stream_prepare(&stream->evt_pair->req,
         &stream->shbuf,
         sndif_format,
         runtime->channels,
         runtime->rate,
         snd_pcm_lib_buffer_bytes(substream),
         snd_pcm_lib_period_bytes(substream));
  if (ret < 0)
   return ret;

  stream->is_open = 1;
 }

 return 0;
}
