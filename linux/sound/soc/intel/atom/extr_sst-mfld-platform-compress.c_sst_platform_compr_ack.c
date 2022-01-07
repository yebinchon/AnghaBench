
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sst_runtime_stream {size_t bytes_written; int id; TYPE_2__* compr_ops; } ;
struct snd_compr_stream {TYPE_1__* runtime; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int (* ack ) (int ,int ,unsigned long) ;} ;
struct TYPE_4__ {struct sst_runtime_stream* private_data; } ;


 TYPE_3__* sst ;
 int stub1 (int ,int ,unsigned long) ;

__attribute__((used)) static int sst_platform_compr_ack(struct snd_compr_stream *cstream,
     size_t bytes)
{
 struct sst_runtime_stream *stream;

 stream = cstream->runtime->private_data;
 stream->compr_ops->ack(sst->dev, stream->id, (unsigned long)bytes);
 stream->bytes_written += bytes;

 return 0;
}
