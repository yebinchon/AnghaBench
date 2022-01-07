
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {size_t number; TYPE_1__* rmidi; } ;
struct mtpav_port {int * input; int mode; } ;
struct mtpav {scalar_t__ share_irq; int spinlock; struct mtpav_port* ports; } ;
struct TYPE_2__ {struct mtpav* private_data; } ;


 int CREG ;
 int MTPAV_MODE_INPUT_OPENED ;
 int snd_mtpav_mputreg (struct mtpav*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_mtpav_input_close(struct snd_rawmidi_substream *substream)
{
 struct mtpav *mtp_card = substream->rmidi->private_data;
 struct mtpav_port *portp = &mtp_card->ports[substream->number];
 unsigned long flags;

 spin_lock_irqsave(&mtp_card->spinlock, flags);
 portp->mode &= ~MTPAV_MODE_INPUT_OPENED;
 portp->input = ((void*)0);
 if (--mtp_card->share_irq == 0)
  snd_mtpav_mputreg(mtp_card, CREG, 0);
 spin_unlock_irqrestore(&mtp_card->spinlock, flags);
 return 0;
}
