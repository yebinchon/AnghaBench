
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sst_runtime_stream {int id; TYPE_2__* compr_ops; } ;
struct snd_compr_stream {TYPE_1__* runtime; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int (* stream_start ) (int ,int ) ;int (* stream_drop ) (int ,int ) ;int (* stream_drain ) (int ,int ) ;int (* stream_partial_drain ) (int ,int ) ;int (* stream_pause ) (int ,int ) ;int (* stream_pause_release ) (int ,int ) ;} ;
struct TYPE_4__ {struct sst_runtime_stream* private_data; } ;


 int EINVAL ;






 TYPE_3__* sst ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ) ;
 int stub5 (int ,int ) ;
 int stub6 (int ,int ) ;

__attribute__((used)) static int sst_platform_compr_trigger(struct snd_compr_stream *cstream, int cmd)
{
 struct sst_runtime_stream *stream = cstream->runtime->private_data;

 switch (cmd) {
 case 131:
  if (stream->compr_ops->stream_start)
   return stream->compr_ops->stream_start(sst->dev, stream->id);
  break;
 case 130:
  if (stream->compr_ops->stream_drop)
   return stream->compr_ops->stream_drop(sst->dev, stream->id);
  break;
 case 129:
  if (stream->compr_ops->stream_drain)
   return stream->compr_ops->stream_drain(sst->dev, stream->id);
  break;
 case 128:
  if (stream->compr_ops->stream_partial_drain)
   return stream->compr_ops->stream_partial_drain(sst->dev, stream->id);
  break;
 case 133:
  if (stream->compr_ops->stream_pause)
   return stream->compr_ops->stream_pause(sst->dev, stream->id);
  break;
 case 132:
  if (stream->compr_ops->stream_pause_release)
   return stream->compr_ops->stream_pause_release(sst->dev, stream->id);
  break;
 }
 return -EINVAL;
}
