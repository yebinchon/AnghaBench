
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int irq; int precise_ptr; int hw_rev; char* card_name; int ss_channels; int ds_channels; int last_spdif_sample_rate; int last_adat_sample_rate; int playback_pid; int capture_pid; int * playback_substream; int * capture_substream; struct pci_dev* pci; scalar_t__ port; int * iobase; int lock; struct snd_card* card; } ;
struct snd_card {int driver; int dev; } ;
struct pci_dev {int irq; } ;


 int EBUSY ;
 int ENODEV ;
 int IRQF_SHARED ;
 int KBUILD_MODNAME ;
 int PCI_CLASS_REVISION ;
 void* RME9636_NCHANNELS ;
 int RME9652_F ;
 scalar_t__ RME9652_IO_EXTENT ;
 void* RME9652_NCHANNELS ;
 int RME9652_status_register ;
 int dev_err (int ,char*,int,...) ;
 int * ioremap_nocache (scalar_t__,scalar_t__) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,int ,unsigned short*) ;
 int pci_request_regions (struct pci_dev*,char*) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 scalar_t__ request_irq (int,int ,int ,int ,struct snd_rme9652*) ;
 int rme9652_decode_spdif_rate (int) ;
 int rme9652_initialize_spdif_receiver (struct snd_rme9652*) ;
 int rme9652_read (struct snd_rme9652*,int ) ;
 int snd_rme9652_create_controls (struct snd_card*,struct snd_rme9652*) ;
 int snd_rme9652_create_pcm (struct snd_card*,struct snd_rme9652*) ;
 int snd_rme9652_initialize_memory (struct snd_rme9652*) ;
 int snd_rme9652_interrupt ;
 int snd_rme9652_proc_init (struct snd_rme9652*) ;
 int snd_rme9652_set_defaults (struct snd_rme9652*) ;
 int spin_lock_init (int *) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_rme9652_create(struct snd_card *card,
         struct snd_rme9652 *rme9652,
         int precise_ptr)
{
 struct pci_dev *pci = rme9652->pci;
 int err;
 int status;
 unsigned short rev;

 rme9652->irq = -1;
 rme9652->card = card;

 pci_read_config_word(rme9652->pci, PCI_CLASS_REVISION, &rev);

 switch (rev & 0xff) {
 case 3:
 case 4:
 case 8:
 case 9:
  break;

 default:

  return -ENODEV;
 }

 if ((err = pci_enable_device(pci)) < 0)
  return err;

 spin_lock_init(&rme9652->lock);

 if ((err = pci_request_regions(pci, "rme9652")) < 0)
  return err;
 rme9652->port = pci_resource_start(pci, 0);
 rme9652->iobase = ioremap_nocache(rme9652->port, RME9652_IO_EXTENT);
 if (rme9652->iobase == ((void*)0)) {
  dev_err(card->dev, "unable to remap region 0x%lx-0x%lx\n",
   rme9652->port, rme9652->port + RME9652_IO_EXTENT - 1);
  return -EBUSY;
 }

 if (request_irq(pci->irq, snd_rme9652_interrupt, IRQF_SHARED,
   KBUILD_MODNAME, rme9652)) {
  dev_err(card->dev, "unable to request IRQ %d\n", pci->irq);
  return -EBUSY;
 }
 rme9652->irq = pci->irq;
 rme9652->precise_ptr = precise_ptr;






 status = rme9652_read(rme9652, RME9652_status_register);
 if (rme9652_decode_spdif_rate(status&RME9652_F) == 1) {
  rme9652->hw_rev = 15;
 } else {
  rme9652->hw_rev = 11;
 }
 switch (rev) {
 case 8:
  strcpy(card->driver, "RME9636");
  if (rme9652->hw_rev == 15) {
   rme9652->card_name = "RME Digi9636 (Rev 1.5)";
  } else {
   rme9652->card_name = "RME Digi9636";
  }
  rme9652->ss_channels = RME9636_NCHANNELS;
  break;
 case 9:
  strcpy(card->driver, "RME9636");
  rme9652->card_name = "RME Digi9636 (Rev G)";
  rme9652->ss_channels = RME9636_NCHANNELS;
  break;
 case 4:
  strcpy(card->driver, "RME9652");
  rme9652->card_name = "RME Digi9652 (Rev G)";
  rme9652->ss_channels = RME9652_NCHANNELS;
  break;
 case 3:
  strcpy(card->driver, "RME9652");
  if (rme9652->hw_rev == 15) {
   rme9652->card_name = "RME Digi9652 (Rev 1.5)";
  } else {
   rme9652->card_name = "RME Digi9652";
  }
  rme9652->ss_channels = RME9652_NCHANNELS;
  break;
 }

 rme9652->ds_channels = (rme9652->ss_channels - 2) / 2 + 2;

 pci_set_master(rme9652->pci);

 if ((err = snd_rme9652_initialize_memory(rme9652)) < 0) {
  return err;
 }

 if ((err = snd_rme9652_create_pcm(card, rme9652)) < 0) {
  return err;
 }

 if ((err = snd_rme9652_create_controls(card, rme9652)) < 0) {
  return err;
 }

 snd_rme9652_proc_init(rme9652);

 rme9652->last_spdif_sample_rate = -1;
 rme9652->last_adat_sample_rate = -1;
 rme9652->playback_pid = -1;
 rme9652->capture_pid = -1;
 rme9652->capture_substream = ((void*)0);
 rme9652->playback_substream = ((void*)0);

 snd_rme9652_set_defaults(rme9652);

 if (rme9652->hw_rev == 15) {
  rme9652_initialize_spdif_receiver (rme9652);
 }

 return 0;
}
