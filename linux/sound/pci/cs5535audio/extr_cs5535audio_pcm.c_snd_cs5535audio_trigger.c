
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct cs5535audio_dma {TYPE_2__* ops; } ;
struct cs5535audio {int reg_lock; TYPE_3__* card; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int (* disable_dma ) (struct cs5535audio*) ;int (* enable_dma ) (struct cs5535audio*) ;int (* pause_dma ) (struct cs5535audio*) ;} ;
struct TYPE_4__ {struct cs5535audio_dma* private_data; } ;


 int EINVAL ;






 int dev_err (int ,char*) ;
 struct cs5535audio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct cs5535audio*) ;
 int stub2 (struct cs5535audio*) ;
 int stub3 (struct cs5535audio*) ;
 int stub4 (struct cs5535audio*) ;
 int stub5 (struct cs5535audio*) ;
 int stub6 (struct cs5535audio*) ;

__attribute__((used)) static int snd_cs5535audio_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct cs5535audio *cs5535au = snd_pcm_substream_chip(substream);
 struct cs5535audio_dma *dma = substream->runtime->private_data;
 int err = 0;

 spin_lock(&cs5535au->reg_lock);
 switch (cmd) {
 case 133:
  dma->ops->pause_dma(cs5535au);
  break;
 case 132:
  dma->ops->enable_dma(cs5535au);
  break;
 case 130:
  dma->ops->enable_dma(cs5535au);
  break;
 case 131:
  dma->ops->enable_dma(cs5535au);
  break;
 case 129:
  dma->ops->disable_dma(cs5535au);
  break;
 case 128:
  dma->ops->disable_dma(cs5535au);
  break;
 default:
  dev_err(cs5535au->card->dev, "unhandled trigger\n");
  err = -EINVAL;
  break;
 }
 spin_unlock(&cs5535au->reg_lock);
 return err;
}
