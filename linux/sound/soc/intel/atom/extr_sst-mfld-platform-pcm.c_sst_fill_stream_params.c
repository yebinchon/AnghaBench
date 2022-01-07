
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
struct sst_dev_stream_map {int task_id; int device_id; } ;
struct sst_data {TYPE_1__* pdata; } ;
struct snd_sst_params {int stream_id; void* ops; int task; int device_type; int stream_type; } ;
struct snd_pcm_substream {scalar_t__ stream; int number; TYPE_2__* pcm; } ;
struct snd_compr_stream {scalar_t__ direction; TYPE_3__* device; } ;
struct TYPE_6__ {int device; } ;
struct TYPE_5__ {int device; } ;
struct TYPE_4__ {int strm_map_size; struct sst_dev_stream_map* pdev_strm_map; } ;


 int EINVAL ;
 int SST_STREAM_TYPE_MUSIC ;
 int sst_get_stream_mapping (int ,int ,scalar_t__,struct sst_dev_stream_map*,int) ;

int sst_fill_stream_params(void *substream,
 const struct sst_data *ctx, struct snd_sst_params *str_params, bool is_compress)
{
 int map_size;
 int index;
 struct sst_dev_stream_map *map;
 struct snd_pcm_substream *pstream = ((void*)0);
 struct snd_compr_stream *cstream = ((void*)0);

 map = ctx->pdata->pdev_strm_map;
 map_size = ctx->pdata->strm_map_size;

 if (is_compress)
  cstream = (struct snd_compr_stream *)substream;
 else
  pstream = (struct snd_pcm_substream *)substream;

 str_params->stream_type = SST_STREAM_TYPE_MUSIC;


 if (pstream) {
  index = sst_get_stream_mapping(pstream->pcm->device,
       pstream->number, pstream->stream,
       map, map_size);
  if (index <= 0)
   return -EINVAL;

  str_params->stream_id = index;
  str_params->device_type = map[index].device_id;
  str_params->task = map[index].task_id;

  str_params->ops = (u8)pstream->stream;
 }

 if (cstream) {
  index = sst_get_stream_mapping(cstream->device->device,
            0, cstream->direction,
            map, map_size);
  if (index <= 0)
   return -EINVAL;
  str_params->stream_id = index;
  str_params->device_type = map[index].device_id;
  str_params->task = map[index].task_id;

  str_params->ops = (u8)cstream->direction;
 }
 return 0;
}
