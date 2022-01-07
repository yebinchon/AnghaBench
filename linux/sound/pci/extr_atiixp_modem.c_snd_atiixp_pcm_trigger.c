
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct atiixp_modem {int reg_lock; } ;
struct atiixp_dma {int running; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* flush_dma ) (struct atiixp_modem*) ;int (* enable_transfer ) (struct atiixp_modem*,int) ;} ;
struct TYPE_3__ {struct atiixp_dma* private_data; } ;


 int EINVAL ;


 scalar_t__ snd_BUG_ON (int) ;
 int snd_atiixp_check_bus_busy (struct atiixp_modem*) ;
 struct atiixp_modem* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct atiixp_modem*,int) ;
 int stub2 (struct atiixp_modem*,int) ;
 int stub3 (struct atiixp_modem*) ;

__attribute__((used)) static int snd_atiixp_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct atiixp_modem *chip = snd_pcm_substream_chip(substream);
 struct atiixp_dma *dma = substream->runtime->private_data;
 int err = 0;

 if (snd_BUG_ON(!dma->ops->enable_transfer ||
         !dma->ops->flush_dma))
  return -EINVAL;

 spin_lock(&chip->reg_lock);
 switch(cmd) {
 case 129:
  dma->ops->enable_transfer(chip, 1);
  dma->running = 1;
  break;
 case 128:
  dma->ops->enable_transfer(chip, 0);
  dma->running = 0;
  break;
 default:
  err = -EINVAL;
  break;
 }
 if (! err) {
 snd_atiixp_check_bus_busy(chip);
 if (cmd == 128) {
  dma->ops->flush_dma(chip);
  snd_atiixp_check_bus_busy(chip);
 }
 }
 spin_unlock(&chip->reg_lock);
 return err;
}
