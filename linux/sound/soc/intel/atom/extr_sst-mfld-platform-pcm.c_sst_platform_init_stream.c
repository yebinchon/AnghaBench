
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int sfreq; scalar_t__ buffer_ptr; struct snd_pcm_substream* arg; int period_elapsed; } ;
struct sst_runtime_stream {TYPE_3__ stream_info; TYPE_2__* ops; } ;
struct snd_soc_pcm_runtime {int dev; } ;
struct snd_pcm_substream {TYPE_1__* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {int (* stream_init ) (int ,TYPE_3__*) ;} ;
struct TYPE_5__ {int rate; struct sst_runtime_stream* private_data; } ;


 int SST_PLATFORM_INIT ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 TYPE_4__* sst ;
 int sst_period_elapsed ;
 int sst_set_stream_status (struct sst_runtime_stream*,int ) ;
 int stub1 (int ,TYPE_3__*) ;

__attribute__((used)) static int sst_platform_init_stream(struct snd_pcm_substream *substream)
{
 struct sst_runtime_stream *stream =
   substream->runtime->private_data;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 int ret_val;

 dev_dbg(rtd->dev, "setting buffer ptr param\n");
 sst_set_stream_status(stream, SST_PLATFORM_INIT);
 stream->stream_info.period_elapsed = sst_period_elapsed;
 stream->stream_info.arg = substream;
 stream->stream_info.buffer_ptr = 0;
 stream->stream_info.sfreq = substream->runtime->rate;
 ret_val = stream->ops->stream_init(sst->dev, &stream->stream_info);
 if (ret_val)
  dev_err(rtd->dev, "control_set ret error %d\n", ret_val);
 return ret_val;

}
