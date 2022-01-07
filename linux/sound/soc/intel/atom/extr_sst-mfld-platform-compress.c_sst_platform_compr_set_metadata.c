
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sst_runtime_stream {int id; TYPE_2__* compr_ops; } ;
struct snd_compr_stream {TYPE_1__* runtime; } ;
struct snd_compr_metadata {int dummy; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int (* set_metadata ) (int ,int ,struct snd_compr_metadata*) ;} ;
struct TYPE_4__ {struct sst_runtime_stream* private_data; } ;


 TYPE_3__* sst ;
 int stub1 (int ,int ,struct snd_compr_metadata*) ;

__attribute__((used)) static int sst_platform_compr_set_metadata(struct snd_compr_stream *cstream,
     struct snd_compr_metadata *metadata)
{
 struct sst_runtime_stream *stream =
   cstream->runtime->private_data;

 return stream->compr_ops->set_metadata(sst->dev, stream->id, metadata);
}
