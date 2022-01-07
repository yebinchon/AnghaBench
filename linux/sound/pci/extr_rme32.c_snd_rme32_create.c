
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rme32 {int irq; int wcreg; int * playback_substream; int * capture_substream; TYPE_1__* card; scalar_t__ iobase; scalar_t__ capture_periodsize; scalar_t__ playback_periodsize; TYPE_2__* adat_pcm; scalar_t__ fullduplex_mode; TYPE_2__* spdif_pcm; int rev; scalar_t__ port; struct pci_dev* pci; int lock; } ;
struct pci_dev {int irq; scalar_t__ device; } ;
struct TYPE_7__ {void* info_flags; int name; int private_free; struct rme32* private_data; } ;
struct TYPE_6__ {int dev; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int KBUILD_MODNAME ;
 scalar_t__ PCI_DEVICE_ID_RME_DIGI32 ;
 scalar_t__ PCI_DEVICE_ID_RME_DIGI32_PRO ;
 scalar_t__ RME32_IO_CONTROL_REGISTER ;
 scalar_t__ RME32_IO_RESET_POS ;
 scalar_t__ RME32_IO_SIZE ;
 int RME32_MID_BUFFER_SIZE ;
 int RME32_WCR_INP_0 ;
 int RME32_WCR_MUTE ;
 int RME32_WCR_SEL ;
 int SNDRV_DMA_TYPE_CONTINUOUS ;
 void* SNDRV_PCM_INFO_HALF_DUPLEX ;
 void* SNDRV_PCM_INFO_JOINT_DUPLEX ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_err (int ,char*,int,...) ;
 scalar_t__ ioremap_nocache (scalar_t__,scalar_t__) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int,int *) ;
 int pci_request_regions (struct pci_dev*,char*) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int ) ;
 scalar_t__ request_irq (int,int ,int ,int ,struct rme32*) ;
 int snd_dma_continuous_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (TYPE_2__*,int ,int ,int ,int ) ;
 int snd_pcm_new (TYPE_1__*,char*,int,int,int,TYPE_2__**) ;
 int snd_pcm_set_ops (TYPE_2__*,int ,int *) ;
 int snd_rme32_capture_adat_fd_ops ;
 int snd_rme32_capture_adat_ops ;
 int snd_rme32_capture_spdif_fd_ops ;
 int snd_rme32_capture_spdif_ops ;
 int snd_rme32_create_switches (TYPE_1__*,struct rme32*) ;
 int snd_rme32_free_adat_pcm ;
 int snd_rme32_free_spdif_pcm ;
 int snd_rme32_interrupt ;
 int snd_rme32_pcm_stop (struct rme32*,int ) ;
 int snd_rme32_playback_adat_fd_ops ;
 int snd_rme32_playback_adat_ops ;
 int snd_rme32_playback_spdif_fd_ops ;
 int snd_rme32_playback_spdif_ops ;
 int snd_rme32_proc_init (struct rme32*) ;
 int snd_rme32_reset_dac (struct rme32*) ;
 int spin_lock_init (int *) ;
 int strcpy (int ,char*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int snd_rme32_create(struct rme32 *rme32)
{
 struct pci_dev *pci = rme32->pci;
 int err;

 rme32->irq = -1;
 spin_lock_init(&rme32->lock);

 if ((err = pci_enable_device(pci)) < 0)
  return err;

 if ((err = pci_request_regions(pci, "RME32")) < 0)
  return err;
 rme32->port = pci_resource_start(rme32->pci, 0);

 rme32->iobase = ioremap_nocache(rme32->port, RME32_IO_SIZE);
 if (!rme32->iobase) {
  dev_err(rme32->card->dev,
   "unable to remap memory region 0x%lx-0x%lx\n",
      rme32->port, rme32->port + RME32_IO_SIZE - 1);
  return -ENOMEM;
 }

 if (request_irq(pci->irq, snd_rme32_interrupt, IRQF_SHARED,
   KBUILD_MODNAME, rme32)) {
  dev_err(rme32->card->dev, "unable to grab IRQ %d\n", pci->irq);
  return -EBUSY;
 }
 rme32->irq = pci->irq;


 pci_read_config_byte(pci, 8, &rme32->rev);


 if ((err = snd_pcm_new(rme32->card, "Digi32 IEC958", 0, 1, 1, &rme32->spdif_pcm)) < 0) {
  return err;
 }
 rme32->spdif_pcm->private_data = rme32;
 rme32->spdif_pcm->private_free = snd_rme32_free_spdif_pcm;
 strcpy(rme32->spdif_pcm->name, "Digi32 IEC958");
 if (rme32->fullduplex_mode) {
  snd_pcm_set_ops(rme32->spdif_pcm, SNDRV_PCM_STREAM_PLAYBACK,
    &snd_rme32_playback_spdif_fd_ops);
  snd_pcm_set_ops(rme32->spdif_pcm, SNDRV_PCM_STREAM_CAPTURE,
    &snd_rme32_capture_spdif_fd_ops);
  snd_pcm_lib_preallocate_pages_for_all(rme32->spdif_pcm, SNDRV_DMA_TYPE_CONTINUOUS,
            snd_dma_continuous_data(GFP_KERNEL),
            0, RME32_MID_BUFFER_SIZE);
  rme32->spdif_pcm->info_flags = SNDRV_PCM_INFO_JOINT_DUPLEX;
 } else {
  snd_pcm_set_ops(rme32->spdif_pcm, SNDRV_PCM_STREAM_PLAYBACK,
    &snd_rme32_playback_spdif_ops);
  snd_pcm_set_ops(rme32->spdif_pcm, SNDRV_PCM_STREAM_CAPTURE,
    &snd_rme32_capture_spdif_ops);
  rme32->spdif_pcm->info_flags = SNDRV_PCM_INFO_HALF_DUPLEX;
 }


 if ((pci->device == PCI_DEVICE_ID_RME_DIGI32) ||
     (pci->device == PCI_DEVICE_ID_RME_DIGI32_PRO)) {

  rme32->adat_pcm = ((void*)0);
 }
 else {
  if ((err = snd_pcm_new(rme32->card, "Digi32 ADAT", 1,
           1, 1, &rme32->adat_pcm)) < 0)
  {
   return err;
  }
  rme32->adat_pcm->private_data = rme32;
  rme32->adat_pcm->private_free = snd_rme32_free_adat_pcm;
  strcpy(rme32->adat_pcm->name, "Digi32 ADAT");
  if (rme32->fullduplex_mode) {
   snd_pcm_set_ops(rme32->adat_pcm, SNDRV_PCM_STREAM_PLAYBACK,
     &snd_rme32_playback_adat_fd_ops);
   snd_pcm_set_ops(rme32->adat_pcm, SNDRV_PCM_STREAM_CAPTURE,
     &snd_rme32_capture_adat_fd_ops);
   snd_pcm_lib_preallocate_pages_for_all(rme32->adat_pcm, SNDRV_DMA_TYPE_CONTINUOUS,
             snd_dma_continuous_data(GFP_KERNEL),
             0, RME32_MID_BUFFER_SIZE);
   rme32->adat_pcm->info_flags = SNDRV_PCM_INFO_JOINT_DUPLEX;
  } else {
   snd_pcm_set_ops(rme32->adat_pcm, SNDRV_PCM_STREAM_PLAYBACK,
     &snd_rme32_playback_adat_ops);
   snd_pcm_set_ops(rme32->adat_pcm, SNDRV_PCM_STREAM_CAPTURE,
     &snd_rme32_capture_adat_ops);
   rme32->adat_pcm->info_flags = SNDRV_PCM_INFO_HALF_DUPLEX;
  }
 }


 rme32->playback_periodsize = 0;
 rme32->capture_periodsize = 0;


 snd_rme32_pcm_stop(rme32, 0);


        snd_rme32_reset_dac(rme32);


 writel(0, rme32->iobase + RME32_IO_RESET_POS);


 rme32->wcreg = RME32_WCR_SEL |
  RME32_WCR_INP_0 |
  RME32_WCR_MUTE;
 writel(rme32->wcreg, rme32->iobase + RME32_IO_CONTROL_REGISTER);



 if ((err = snd_rme32_create_switches(rme32->card, rme32)) < 0) {
  return err;
 }


 snd_rme32_proc_init(rme32);

 rme32->capture_substream = ((void*)0);
 rme32->playback_substream = ((void*)0);

 return 0;
}
