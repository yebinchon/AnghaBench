
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_card {char* shortname; int longname; int driver; int dev; } ;
struct pci_dev {int no_64bit_msi; scalar_t__ vendor; int revision; int dev; } ;
struct hdac_bus {int irq; int addr; int codec_mask; scalar_t__ ppcap; int * remap_addr; } ;
struct azx {int dev_index; int driver_type; int region_requested; int gts_present; int driver_caps; int align_buffer_size; unsigned short capture_streams; unsigned short playback_streams; unsigned short playback_index_offset; unsigned short num_streams; struct snd_card* card; scalar_t__ capture_index_offset; struct pci_dev* pci; scalar_t__ msi; } ;


 unsigned short ATIHDMI_NUM_CAPTURE ;
 unsigned short ATIHDMI_NUM_PLAYBACK ;
 int AZX_DCAPS_NO_64BIT ;
 int AZX_DCAPS_NO_ALIGN_BUFSIZE ;
 int AZX_DCAPS_NO_MSI64 ;
 int AZX_DCAPS_SEPARATE_STREAM_TAG ;



 int AZX_DRIVER_SKL ;

 unsigned short AZX_GCAP_64OK ;
 int DMA_BIT_MASK (int) ;
 int EBUSY ;
 int ENODEV ;
 int ENXIO ;
 int GCAP ;
 unsigned short ICH6_NUM_CAPTURE ;
 unsigned short ICH6_NUM_PLAYBACK ;
 int PCI_BASE_ADDRESS_1 ;
 int PCI_DEVICE_ID_ATI_SBX00_SMBUS ;
 scalar_t__ PCI_VENDOR_ID_AMD ;
 scalar_t__ PCI_VENDOR_ID_ATI ;
 scalar_t__ PCI_VENDOR_ID_NVIDIA ;
 unsigned short ULI_NUM_CAPTURE ;
 unsigned short ULI_NUM_PLAYBACK ;
 int X86_FEATURE_ART ;
 scalar_t__ align_buffer_size ;
 scalar_t__ azx_acquire_irq (struct azx*,int ) ;
 int azx_alloc_stream_pages (struct azx*) ;
 struct hdac_bus* azx_bus (struct azx*) ;
 int azx_init_pci (struct azx*) ;
 int azx_init_streams (struct azx*) ;
 unsigned short azx_readw (struct azx*,int ) ;
 scalar_t__ boot_cpu_has (int ) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,int) ;
 int dma_set_coherent_mask (int *,int ) ;
 int dma_set_mask (int *,int ) ;
 int * driver_short_names ;
 int hda_intel_init_chip (struct azx*,int) ;
 int pci_dev_put (struct pci_dev*) ;
 scalar_t__ pci_enable_msi (struct pci_dev*) ;
 struct pci_dev* pci_get_device (scalar_t__,int ,int *) ;
 int * pci_ioremap_bar (struct pci_dev*,int ) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_request_regions (struct pci_dev*,char*) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;
 int* probe_only ;
 int snd_hdac_bus_parse_capabilities (struct hdac_bus*) ;
 int snd_hdac_i915_set_bclk (struct hdac_bus*) ;
 int snprintf (int ,int,char*,char*,int ,int ) ;
 int strcpy (int ,char*) ;
 int strlcpy (char*,int ,int) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int azx_first_init(struct azx *chip)
{
 int dev = chip->dev_index;
 struct pci_dev *pci = chip->pci;
 struct snd_card *card = chip->card;
 struct hdac_bus *bus = azx_bus(chip);
 int err;
 unsigned short gcap;
 unsigned int dma_bits = 64;



 if (chip->driver_type == 128) {
  u16 tmp3;
  pci_read_config_word(pci, 0x40, &tmp3);
  pci_write_config_word(pci, 0x40, tmp3 | 0x10);
  pci_write_config_dword(pci, PCI_BASE_ADDRESS_1, 0);
 }


 err = pci_request_regions(pci, "ICH HD audio");
 if (err < 0)
  return err;
 chip->region_requested = 1;

 bus->addr = pci_resource_start(pci, 0);
 bus->remap_addr = pci_ioremap_bar(pci, 0);
 if (bus->remap_addr == ((void*)0)) {
  dev_err(card->dev, "ioremap error\n");
  return -ENXIO;
 }

 if (chip->driver_type == AZX_DRIVER_SKL)
  snd_hdac_bus_parse_capabilities(bus);







 chip->gts_present = 0;






 if (chip->msi) {
  if (chip->driver_caps & AZX_DCAPS_NO_MSI64) {
   dev_dbg(card->dev, "Disabling 64bit MSI\n");
   pci->no_64bit_msi = 1;
  }
  if (pci_enable_msi(pci) < 0)
   chip->msi = 0;
 }

 pci_set_master(pci);
 synchronize_irq(bus->irq);

 gcap = azx_readw(chip, GCAP);
 dev_dbg(card->dev, "chipset global capabilities = 0x%x\n", gcap);


 if (chip->pci->vendor == PCI_VENDOR_ID_AMD)
  dma_bits = 40;


 if (chip->pci->vendor == PCI_VENDOR_ID_ATI) {
  struct pci_dev *p_smbus;
  dma_bits = 40;
  p_smbus = pci_get_device(PCI_VENDOR_ID_ATI,
      PCI_DEVICE_ID_ATI_SBX00_SMBUS,
      ((void*)0));
  if (p_smbus) {
   if (p_smbus->revision < 0x30)
    gcap &= ~AZX_GCAP_64OK;
   pci_dev_put(p_smbus);
  }
 }


 if (chip->pci->vendor == PCI_VENDOR_ID_NVIDIA)
  dma_bits = 40;


 if (chip->driver_caps & AZX_DCAPS_NO_64BIT) {
  dev_dbg(card->dev, "Disabling 64bit DMA\n");
  gcap &= ~AZX_GCAP_64OK;
 }


 if (align_buffer_size >= 0)
  chip->align_buffer_size = !!align_buffer_size;
 else {
  if (chip->driver_caps & AZX_DCAPS_NO_ALIGN_BUFSIZE)
   chip->align_buffer_size = 0;
  else
   chip->align_buffer_size = 1;
 }


 if (!(gcap & AZX_GCAP_64OK))
  dma_bits = 32;
 if (!dma_set_mask(&pci->dev, DMA_BIT_MASK(dma_bits))) {
  dma_set_coherent_mask(&pci->dev, DMA_BIT_MASK(dma_bits));
 } else {
  dma_set_mask(&pci->dev, DMA_BIT_MASK(32));
  dma_set_coherent_mask(&pci->dev, DMA_BIT_MASK(32));
 }




 chip->capture_streams = (gcap >> 8) & 0x0f;
 chip->playback_streams = (gcap >> 12) & 0x0f;
 if (!chip->playback_streams && !chip->capture_streams) {


  switch (chip->driver_type) {
  case 128:
   chip->playback_streams = ULI_NUM_PLAYBACK;
   chip->capture_streams = ULI_NUM_CAPTURE;
   break;
  case 131:
  case 130:
   chip->playback_streams = ATIHDMI_NUM_PLAYBACK;
   chip->capture_streams = ATIHDMI_NUM_CAPTURE;
   break;
  case 129:
  default:
   chip->playback_streams = ICH6_NUM_PLAYBACK;
   chip->capture_streams = ICH6_NUM_CAPTURE;
   break;
  }
 }
 chip->capture_index_offset = 0;
 chip->playback_index_offset = chip->capture_streams;
 chip->num_streams = chip->playback_streams + chip->capture_streams;


 if (chip->num_streams > 15 &&
     (chip->driver_caps & AZX_DCAPS_SEPARATE_STREAM_TAG) == 0) {
  dev_warn(chip->card->dev, "number of I/O streams is %d, "
    "forcing separate stream tags", chip->num_streams);
  chip->driver_caps |= AZX_DCAPS_SEPARATE_STREAM_TAG;
 }


 err = azx_init_streams(chip);
 if (err < 0)
  return err;

 err = azx_alloc_stream_pages(chip);
 if (err < 0)
  return err;


 azx_init_pci(chip);

 snd_hdac_i915_set_bclk(bus);

 hda_intel_init_chip(chip, (probe_only[dev] & 2) == 0);


 if (!azx_bus(chip)->codec_mask) {
  dev_err(card->dev, "no codecs found!\n");
  return -ENODEV;
 }

 if (azx_acquire_irq(chip, 0) < 0)
  return -EBUSY;

 strcpy(card->driver, "HDA-Intel");
 strlcpy(card->shortname, driver_short_names[chip->driver_type],
  sizeof(card->shortname));
 snprintf(card->longname, sizeof(card->longname),
   "%s at 0x%lx irq %i",
   card->shortname, bus->addr, bus->irq);

 return 0;
}
