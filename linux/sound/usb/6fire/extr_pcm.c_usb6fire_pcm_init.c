
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm {int name; struct pcm_runtime* private_data; } ;
struct sfire_chip {struct pcm_runtime* pcm; TYPE_3__* dev; int card; } ;
struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {int lock; } ;
struct pcm_runtime {struct snd_pcm* instance; TYPE_4__* in_urbs; TYPE_4__* out_urbs; TYPE_2__ capture; TYPE_1__ playback; int stream_mutex; int stream_wait_queue; int rate; int stream_state; struct sfire_chip* chip; } ;
struct TYPE_8__ {struct TYPE_8__* peer; } ;
struct TYPE_7__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IN_EP ;
 int OUT_EP ;
 int PCM_N_URBS ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int STREAM_DISABLED ;
 int dev_err (int *,char*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct pcm_runtime*) ;
 struct pcm_runtime* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pcm_ops ;
 int rates ;
 int snd_pcm_new (int ,char*,int ,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int spin_lock_init (int *) ;
 int strcpy (int ,char*) ;
 int usb6fire_pcm_buffers_destroy (struct pcm_runtime*) ;
 int usb6fire_pcm_buffers_init (struct pcm_runtime*) ;
 int usb6fire_pcm_in_urb_handler ;
 int usb6fire_pcm_init_urb (TYPE_4__*,struct sfire_chip*,int,int ,int ) ;
 int usb6fire_pcm_out_urb_handler ;

int usb6fire_pcm_init(struct sfire_chip *chip)
{
 int i;
 int ret;
 struct snd_pcm *pcm;
 struct pcm_runtime *rt =
   kzalloc(sizeof(struct pcm_runtime), GFP_KERNEL);

 if (!rt)
  return -ENOMEM;

 ret = usb6fire_pcm_buffers_init(rt);
 if (ret) {
  usb6fire_pcm_buffers_destroy(rt);
  kfree(rt);
  return ret;
 }

 rt->chip = chip;
 rt->stream_state = STREAM_DISABLED;
 rt->rate = ARRAY_SIZE(rates);
 init_waitqueue_head(&rt->stream_wait_queue);
 mutex_init(&rt->stream_mutex);

 spin_lock_init(&rt->playback.lock);
 spin_lock_init(&rt->capture.lock);

 for (i = 0; i < PCM_N_URBS; i++) {
  usb6fire_pcm_init_urb(&rt->in_urbs[i], chip, 1, IN_EP,
    usb6fire_pcm_in_urb_handler);
  usb6fire_pcm_init_urb(&rt->out_urbs[i], chip, 0, OUT_EP,
    usb6fire_pcm_out_urb_handler);

  rt->in_urbs[i].peer = &rt->out_urbs[i];
  rt->out_urbs[i].peer = &rt->in_urbs[i];
 }

 ret = snd_pcm_new(chip->card, "DMX6FireUSB", 0, 1, 1, &pcm);
 if (ret < 0) {
  usb6fire_pcm_buffers_destroy(rt);
  kfree(rt);
  dev_err(&chip->dev->dev, "cannot create pcm instance.\n");
  return ret;
 }

 pcm->private_data = rt;
 strcpy(pcm->name, "DMX 6Fire USB");
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &pcm_ops);
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &pcm_ops);

 if (ret) {
  usb6fire_pcm_buffers_destroy(rt);
  kfree(rt);
  dev_err(&chip->dev->dev,
   "error preallocating pcm buffers.\n");
  return ret;
 }
 rt->instance = pcm;

 chip->pcm = rt;
 return 0;
}
