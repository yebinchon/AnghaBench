
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int card; int chip_status; } ;
struct snd_vxpocket {int index; } ;
struct pcmcia_device {struct snd_vxpocket* priv; } ;


 int VX_STAT_IS_STALE ;
 int card_alloc ;
 int snd_card_disconnect (int ) ;
 int snd_card_free_when_closed (int ) ;
 int vxpocket_release (struct pcmcia_device*) ;

__attribute__((used)) static void vxpocket_detach(struct pcmcia_device *link)
{
 struct snd_vxpocket *vxp;
 struct vx_core *chip;

 if (! link)
  return;

 vxp = link->priv;
 chip = (struct vx_core *)vxp;
 card_alloc &= ~(1 << vxp->index);

 chip->chip_status |= VX_STAT_IS_STALE;
 snd_card_disconnect(chip->card);
 vxpocket_release(link);
 snd_card_free_when_closed(chip->card);
}
