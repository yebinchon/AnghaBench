
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct atiixp_dma {int running; int suspended; TYPE_2__* ops; int saved_curptr; } ;
struct atiixp {int reg_lock; scalar_t__ remap_addr; } ;
struct TYPE_4__ {int (* flush_dma ) (struct atiixp*) ;int (* enable_transfer ) (struct atiixp*,int) ;scalar_t__ dt_cur; } ;
struct TYPE_3__ {struct atiixp_dma* private_data; } ;


 int EINVAL ;






 int readl (scalar_t__) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_atiixp_check_bus_busy (struct atiixp*) ;
 struct atiixp* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct atiixp*,int) ;
 int stub2 (struct atiixp*,int) ;
 int stub3 (struct atiixp*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int snd_atiixp_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct atiixp *chip = snd_pcm_substream_chip(substream);
 struct atiixp_dma *dma = substream->runtime->private_data;
 int err = 0;

 if (snd_BUG_ON(!dma->ops->enable_transfer ||
         !dma->ops->flush_dma))
  return -EINVAL;

 spin_lock(&chip->reg_lock);
 switch (cmd) {
 case 130:
 case 132:
 case 131:
  if (dma->running && dma->suspended &&
      cmd == 131)
   writel(dma->saved_curptr, chip->remap_addr +
          dma->ops->dt_cur);
  dma->ops->enable_transfer(chip, 1);
  dma->running = 1;
  dma->suspended = 0;
  break;
 case 129:
 case 133:
 case 128:
  dma->suspended = cmd == 128;
  if (dma->running && dma->suspended)
   dma->saved_curptr = readl(chip->remap_addr +
        dma->ops->dt_cur);
  dma->ops->enable_transfer(chip, 0);
  dma->running = 0;
  break;
 default:
  err = -EINVAL;
  break;
 }
 if (! err) {
  snd_atiixp_check_bus_busy(chip);
  if (cmd == 129) {
   dma->ops->flush_dma(chip);
   snd_atiixp_check_bus_busy(chip);
  }
 }
 spin_unlock(&chip->reg_lock);
 return err;
}
