
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_compr_stream {TYPE_2__* device; TYPE_1__* runtime; } ;
struct snd_compr_file {struct snd_compr_stream stream; } ;
struct file {struct snd_compr_file* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int state; size_t fragment_size; int sleep; } ;


 int EPOLLERR ;





 int SNDRV_PCM_STATE_SETUP ;

 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int pr_debug (char*,unsigned long) ;
 scalar_t__ snd_BUG_ON (int) ;
 size_t snd_compr_get_avail (struct snd_compr_stream*) ;
 int snd_compr_get_poll (struct snd_compr_stream*) ;

__attribute__((used)) static __poll_t snd_compr_poll(struct file *f, poll_table *wait)
{
 struct snd_compr_file *data = f->private_data;
 struct snd_compr_stream *stream;
 size_t avail;
 __poll_t retval = 0;

 if (snd_BUG_ON(!data))
  return EPOLLERR;

 stream = &data->stream;

 mutex_lock(&stream->device->lock);

 switch (stream->runtime->state) {
 case 132:
 case 128:
  retval = snd_compr_get_poll(stream) | EPOLLERR;
  goto out;
 default:
  break;
 }

 poll_wait(f, &stream->runtime->sleep, wait);

 avail = snd_compr_get_avail(stream);
 pr_debug("avail is %ld\n", (unsigned long)avail);

 switch (stream->runtime->state) {
 case 133:



  retval = snd_compr_get_poll(stream);
  stream->runtime->state = SNDRV_PCM_STATE_SETUP;
  break;
 case 129:
 case 130:
 case 131:
  if (avail >= stream->runtime->fragment_size)
   retval = snd_compr_get_poll(stream);
  break;
 default:
  retval = snd_compr_get_poll(stream) | EPOLLERR;
  break;
 }
out:
 mutex_unlock(&stream->device->lock);
 return retval;
}
