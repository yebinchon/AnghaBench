
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int str_id; } ;
struct sst_runtime_stream {TYPE_6__* ops; TYPE_5__ stream_info; } ;
struct sst_data {int dummy; } ;
struct TYPE_9__ {int member_0; } ;
struct TYPE_8__ {TYPE_2__ member_0; } ;
struct snd_sst_stream_params {TYPE_1__ member_0; } ;
struct snd_sst_alloc_params_ext {int member_0; } ;
struct snd_sst_params {int stream_id; int codec; struct snd_sst_alloc_params_ext aparams; struct snd_sst_stream_params sparams; int member_0; } ;
struct snd_soc_dai {int dummy; } ;
struct TYPE_11__ {int area; } ;
struct snd_pcm_substream {TYPE_4__ dma_buffer; TYPE_3__* runtime; } ;
struct TYPE_14__ {int dev; } ;
struct TYPE_13__ {int (* open ) (int ,struct snd_sst_params*) ;} ;
struct TYPE_10__ {int dma_area; struct sst_runtime_stream* private_data; } ;


 int SST_CODEC_TYPE_PCM ;
 struct sst_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 TYPE_7__* sst ;
 int sst_fill_alloc_params (struct snd_pcm_substream*,struct snd_sst_alloc_params_ext*) ;
 int sst_fill_pcm_params (struct snd_pcm_substream*,struct snd_sst_stream_params*) ;
 int sst_fill_stream_params (struct snd_pcm_substream*,struct sst_data*,struct snd_sst_params*,int) ;
 int stub1 (int ,struct snd_sst_params*) ;

__attribute__((used)) static int sst_platform_alloc_stream(struct snd_pcm_substream *substream,
  struct snd_soc_dai *dai)
{
 struct sst_runtime_stream *stream =
   substream->runtime->private_data;
 struct snd_sst_stream_params param = {{{0,},},};
 struct snd_sst_params str_params = {0};
 struct snd_sst_alloc_params_ext alloc_params = {0};
 int ret_val = 0;
 struct sst_data *ctx = snd_soc_dai_get_drvdata(dai);


 sst_fill_pcm_params(substream, &param);
 sst_fill_alloc_params(substream, &alloc_params);
 substream->runtime->dma_area = substream->dma_buffer.area;
 str_params.sparams = param;
 str_params.aparams = alloc_params;
 str_params.codec = SST_CODEC_TYPE_PCM;


 ret_val = sst_fill_stream_params(substream, ctx, &str_params, 0);
 if (ret_val < 0)
  return ret_val;

 stream->stream_info.str_id = str_params.stream_id;

 ret_val = stream->ops->open(sst->dev, &str_params);
 if (ret_val <= 0)
  return ret_val;


 return ret_val;
}
