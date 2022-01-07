
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_card {char* driver; char* shortname; struct aaci* private_data; int longname; int private_free; } ;
struct TYPE_2__ {scalar_t__ start; } ;
struct amba_device {int * irq; TYPE_1__ res; int dev; } ;
struct aaci {int maincr; struct amba_device* dev; struct snd_card* card; int irq_lock; int ac97_sem; } ;


 char* DRIVER_NAME ;
 int MAINCR_IE ;
 int MAINCR_SL1RXEN ;
 int MAINCR_SL1TXEN ;
 int MAINCR_SL2RXEN ;
 int MAINCR_SL2TXEN ;
 int SNDRV_DEFAULT_IDX1 ;
 int SNDRV_DEFAULT_STR1 ;
 int THIS_MODULE ;
 int aaci_free_card ;
 int amba_part (struct amba_device*) ;
 int amba_rev (struct amba_device*) ;
 int mutex_init (int *) ;
 int snd_card_new (int *,int ,int ,int ,int,struct snd_card**) ;
 int snprintf (int ,int,char*,char*,int,int,unsigned long long,int ) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static struct aaci *aaci_init_card(struct amba_device *dev)
{
 struct aaci *aaci;
 struct snd_card *card;
 int err;

 err = snd_card_new(&dev->dev, SNDRV_DEFAULT_IDX1, SNDRV_DEFAULT_STR1,
      THIS_MODULE, sizeof(struct aaci), &card);
 if (err < 0)
  return ((void*)0);

 card->private_free = aaci_free_card;

 strlcpy(card->driver, DRIVER_NAME, sizeof(card->driver));
 strlcpy(card->shortname, "ARM AC'97 Interface", sizeof(card->shortname));
 snprintf(card->longname, sizeof(card->longname),
   "%s PL%03x rev%u at 0x%08llx, irq %d",
   card->shortname, amba_part(dev), amba_rev(dev),
   (unsigned long long)dev->res.start, dev->irq[0]);

 aaci = card->private_data;
 mutex_init(&aaci->ac97_sem);
 mutex_init(&aaci->irq_lock);
 aaci->card = card;
 aaci->dev = dev;


 aaci->maincr = MAINCR_IE | MAINCR_SL1RXEN | MAINCR_SL1TXEN |
         MAINCR_SL2RXEN | MAINCR_SL2TXEN;

 return aaci;
}
