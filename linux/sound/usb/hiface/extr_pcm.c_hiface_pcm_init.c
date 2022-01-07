
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct snd_pcm {int name; int private_free; struct pcm_runtime* private_data; } ;
struct TYPE_4__ {int lock; } ;
struct pcm_runtime {int extra_freq; TYPE_3__* out_urbs; struct snd_pcm* instance; TYPE_1__ playback; int stream_mutex; int stream_wait_queue; int stream_state; struct hiface_chip* chip; } ;
struct hiface_chip {struct pcm_runtime* pcm; TYPE_2__* dev; int card; } ;
struct TYPE_6__ {struct pcm_runtime* buffer; } ;
struct TYPE_5__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int OUT_EP ;
 int PCM_N_URBS ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int STREAM_DISABLED ;
 int dev_err (int *,char*) ;
 int hiface_pcm_free ;
 int hiface_pcm_init_urb (TYPE_3__*,struct hiface_chip*,int ,int ) ;
 int hiface_pcm_out_urb_handler ;
 int init_waitqueue_head (int *) ;
 int kfree (struct pcm_runtime*) ;
 struct pcm_runtime* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pcm_ops ;
 int snd_pcm_new (int ,char*,int ,int,int ,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int spin_lock_init (int *) ;
 int strlcpy (int ,char*,int) ;

int hiface_pcm_init(struct hiface_chip *chip, u8 extra_freq)
{
 int i;
 int ret;
 struct snd_pcm *pcm;
 struct pcm_runtime *rt;

 rt = kzalloc(sizeof(*rt), GFP_KERNEL);
 if (!rt)
  return -ENOMEM;

 rt->chip = chip;
 rt->stream_state = STREAM_DISABLED;
 if (extra_freq)
  rt->extra_freq = 1;

 init_waitqueue_head(&rt->stream_wait_queue);
 mutex_init(&rt->stream_mutex);
 spin_lock_init(&rt->playback.lock);

 for (i = 0; i < PCM_N_URBS; i++) {
  ret = hiface_pcm_init_urb(&rt->out_urbs[i], chip, OUT_EP,
        hiface_pcm_out_urb_handler);
  if (ret < 0)
   goto error;
 }

 ret = snd_pcm_new(chip->card, "USB-SPDIF Audio", 0, 1, 0, &pcm);
 if (ret < 0) {
  dev_err(&chip->dev->dev, "Cannot create pcm instance\n");
  goto error;
 }

 pcm->private_data = rt;
 pcm->private_free = hiface_pcm_free;

 strlcpy(pcm->name, "USB-SPDIF Audio", sizeof(pcm->name));
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &pcm_ops);

 rt->instance = pcm;

 chip->pcm = rt;
 return 0;

error:
 for (i = 0; i < PCM_N_URBS; i++)
  kfree(rt->out_urbs[i].buffer);
 kfree(rt);
 return ret;
}
