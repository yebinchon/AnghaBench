
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_ali {TYPE_1__* card; TYPE_2__* pci; int irq; int port; } ;
struct TYPE_5__ {int irq; } ;
struct TYPE_4__ {int dev; } ;


 int EBUSY ;
 int IRQF_SHARED ;
 int KBUILD_MODNAME ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int pci_request_regions (TYPE_2__*,char*) ;
 int pci_resource_start (TYPE_2__*,int ) ;
 scalar_t__ request_irq (int ,int ,int ,int ,struct snd_ali*) ;
 int snd_ali_card_interrupt ;

__attribute__((used)) static int snd_ali_resources(struct snd_ali *codec)
{
 int err;

 dev_dbg(codec->card->dev, "resources allocation ...\n");
 err = pci_request_regions(codec->pci, "ALI 5451");
 if (err < 0)
  return err;
 codec->port = pci_resource_start(codec->pci, 0);

 if (request_irq(codec->pci->irq, snd_ali_card_interrupt,
   IRQF_SHARED, KBUILD_MODNAME, codec)) {
  dev_err(codec->card->dev, "Unable to request irq.\n");
  return -EBUSY;
 }
 codec->irq = codec->pci->irq;
 dev_dbg(codec->card->dev, "resources allocated.\n");
 return 0;
}
