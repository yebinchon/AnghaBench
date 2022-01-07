
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_dev {struct pci_dev* pci; } ;
struct pci_dev {int dummy; } ;
struct hdac_bus {int num_streams; int dev; int irq; int ppcap; int * remap_addr; int addr; } ;


 int DMA_BIT_MASK (int) ;
 int EBUSY ;
 int EIO ;
 int ENODEV ;
 int ENXIO ;
 int GCAP ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 struct skl_dev* bus_to_skl (struct hdac_bus*) ;
 int dev_dbg (int ,char*,unsigned short) ;
 int dev_err (int ,char*) ;
 int dma_set_coherent_mask (int ,int ) ;
 int dma_set_mask (int ,int ) ;
 int * pci_ioremap_bar (struct pci_dev*,int ) ;
 int pci_request_regions (struct pci_dev*,char*) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 scalar_t__ skl_acquire_irq (struct hdac_bus*,int ) ;
 int skl_dum_set (struct hdac_bus*) ;
 int skl_init_chip (struct hdac_bus*,int) ;
 int skl_init_pci (struct skl_dev*) ;
 int snd_hdac_bus_alloc_stream_pages (struct hdac_bus*) ;
 int snd_hdac_bus_parse_capabilities (struct hdac_bus*) ;
 int snd_hdac_bus_reset_link (struct hdac_bus*,int) ;
 unsigned short snd_hdac_chip_readw (struct hdac_bus*,int ) ;
 int snd_hdac_ext_stream_init_all (struct hdac_bus*,int,int,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int skl_first_init(struct hdac_bus *bus)
{
 struct skl_dev *skl = bus_to_skl(bus);
 struct pci_dev *pci = skl->pci;
 int err;
 unsigned short gcap;
 int cp_streams, pb_streams, start_idx;

 err = pci_request_regions(pci, "Skylake HD audio");
 if (err < 0)
  return err;

 bus->addr = pci_resource_start(pci, 0);
 bus->remap_addr = pci_ioremap_bar(pci, 0);
 if (bus->remap_addr == ((void*)0)) {
  dev_err(bus->dev, "ioremap error\n");
  return -ENXIO;
 }

 snd_hdac_bus_reset_link(bus, 1);

 snd_hdac_bus_parse_capabilities(bus);


 if (!bus->ppcap) {
  dev_err(bus->dev, "bus ppcap not set, HDaudio or DSP not present?\n");
  return -ENODEV;
 }

 if (skl_acquire_irq(bus, 0) < 0)
  return -EBUSY;

 pci_set_master(pci);
 synchronize_irq(bus->irq);

 gcap = snd_hdac_chip_readw(bus, GCAP);
 dev_dbg(bus->dev, "chipset global capabilities = 0x%x\n", gcap);


 cp_streams = (gcap >> 8) & 0x0f;
 pb_streams = (gcap >> 12) & 0x0f;

 if (!pb_streams && !cp_streams) {
  dev_err(bus->dev, "no streams found in GCAP definitions?\n");
  return -EIO;
 }

 bus->num_streams = cp_streams + pb_streams;


 if (!dma_set_mask(bus->dev, DMA_BIT_MASK(64))) {
  dma_set_coherent_mask(bus->dev, DMA_BIT_MASK(64));
 } else {
  dma_set_mask(bus->dev, DMA_BIT_MASK(32));
  dma_set_coherent_mask(bus->dev, DMA_BIT_MASK(32));
 }


 snd_hdac_ext_stream_init_all
  (bus, 0, cp_streams, SNDRV_PCM_STREAM_CAPTURE);
 start_idx = cp_streams;
 snd_hdac_ext_stream_init_all
  (bus, start_idx, pb_streams, SNDRV_PCM_STREAM_PLAYBACK);

 err = snd_hdac_bus_alloc_stream_pages(bus);
 if (err < 0)
  return err;


 skl_init_pci(skl);
 skl_dum_set(bus);

 return skl_init_chip(bus, 1);
}
