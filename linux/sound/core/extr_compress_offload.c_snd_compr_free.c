
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct snd_compr_runtime* runtime; TYPE_1__* ops; int error_work; } ;
struct snd_compr_runtime {int state; TYPE_2__ stream; struct snd_compr_runtime* buffer; int dma_buffer_p; } ;
struct snd_compr_file {int state; TYPE_2__ stream; struct snd_compr_file* buffer; int dma_buffer_p; } ;
struct inode {int dummy; } ;
struct file {struct snd_compr_runtime* private_data; } ;
struct TYPE_4__ {int (* free ) (TYPE_2__*) ;int (* trigger ) (TYPE_2__*,int ) ;} ;





 int SNDRV_PCM_TRIGGER_STOP ;
 int cancel_delayed_work_sync (int *) ;
 int kfree (struct snd_compr_runtime*) ;
 int stub1 (TYPE_2__*,int ) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static int snd_compr_free(struct inode *inode, struct file *f)
{
 struct snd_compr_file *data = f->private_data;
 struct snd_compr_runtime *runtime = data->stream.runtime;

 cancel_delayed_work_sync(&data->stream.error_work);

 switch (runtime->state) {
 case 128:
 case 130:
 case 129:
  data->stream.ops->trigger(&data->stream, SNDRV_PCM_TRIGGER_STOP);
  break;
 default:
  break;
 }

 data->stream.ops->free(&data->stream);
 if (!data->stream.runtime->dma_buffer_p)
  kfree(data->stream.runtime->buffer);
 kfree(data->stream.runtime);
 kfree(data);
 return 0;
}
