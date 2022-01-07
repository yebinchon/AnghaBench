
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_card {int dev; int mixername; int driver; } ;
struct pci_dev {int irq; } ;
struct hdsp {int irq; int max_channels; int firmware_rev; char* card_name; int use_midi_tasklet; int state; int io_type; struct snd_card* card; scalar_t__ dds_value; scalar_t__ precise_ptr; scalar_t__ port; int * iobase; struct pci_dev* pci; int midi_tasklet; int lock; scalar_t__ control2_register; scalar_t__ control_register; TYPE_1__* midi; } ;
struct TYPE_2__ {int lock; scalar_t__ pending; int * output; int * input; int * rmidi; } ;


 int Digiface ;
 int EBUSY ;
 int ENODEV ;
 int H9632 ;
 int H9652 ;
 int HDSP_DllError ;
 int HDSP_FirmwareLoaded ;
 scalar_t__ HDSP_IO_EXTENT ;
 int HDSP_status2Register ;
 int HDSP_statusRegister ;
 int HDSP_version1 ;
 int HDSP_version2 ;
 int IRQF_SHARED ;
 int KBUILD_MODNAME ;
 int Multiface ;
 int PCI_CLASS_REVISION ;
 int PCI_LATENCY_TIMER ;
 int RPM ;
 int Undefined ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*) ;
 int hdsp_midi_tasklet ;
 int hdsp_read (struct hdsp*,int ) ;
 int hdsp_request_fw_loader (struct hdsp*) ;
 int hdsp_wait_for_iobox (struct hdsp*,int,int) ;
 int * ioremap_nocache (scalar_t__,scalar_t__) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_request_regions (struct pci_dev*,char*) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 scalar_t__ request_irq (int,int ,int ,int ,struct hdsp*) ;
 int snd_hdsp_create_alsa_devices (struct snd_card*,struct hdsp*) ;
 int snd_hdsp_create_hwdep (struct snd_card*,struct hdsp*) ;
 int snd_hdsp_enable_io (struct hdsp*) ;
 int snd_hdsp_initialize_channels (struct hdsp*) ;
 int snd_hdsp_initialize_memory (struct hdsp*) ;
 int snd_hdsp_initialize_midi_flush (struct hdsp*) ;
 int snd_hdsp_interrupt ;
 int spin_lock_init (int *) ;
 int strcpy (int ,char*) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int snd_hdsp_create(struct snd_card *card,
      struct hdsp *hdsp)
{
 struct pci_dev *pci = hdsp->pci;
 int err;
 int is_9652 = 0;
 int is_9632 = 0;

 hdsp->irq = -1;
 hdsp->state = 0;
 hdsp->midi[0].rmidi = ((void*)0);
 hdsp->midi[1].rmidi = ((void*)0);
 hdsp->midi[0].input = ((void*)0);
 hdsp->midi[1].input = ((void*)0);
 hdsp->midi[0].output = ((void*)0);
 hdsp->midi[1].output = ((void*)0);
 hdsp->midi[0].pending = 0;
 hdsp->midi[1].pending = 0;
 spin_lock_init(&hdsp->midi[0].lock);
 spin_lock_init(&hdsp->midi[1].lock);
 hdsp->iobase = ((void*)0);
 hdsp->control_register = 0;
 hdsp->control2_register = 0;
 hdsp->io_type = Undefined;
 hdsp->max_channels = 26;

 hdsp->card = card;

 spin_lock_init(&hdsp->lock);

 tasklet_init(&hdsp->midi_tasklet, hdsp_midi_tasklet, (unsigned long)hdsp);

 pci_read_config_word(hdsp->pci, PCI_CLASS_REVISION, &hdsp->firmware_rev);
 hdsp->firmware_rev &= 0xff;
 pci_write_config_byte(hdsp->pci, PCI_LATENCY_TIMER, 0xFF);

 strcpy(card->driver, "H-DSP");
 strcpy(card->mixername, "Xilinx FPGA");

 if (hdsp->firmware_rev < 0xa)
  return -ENODEV;
 else if (hdsp->firmware_rev < 0x64)
  hdsp->card_name = "RME Hammerfall DSP";
 else if (hdsp->firmware_rev < 0x96) {
  hdsp->card_name = "RME HDSP 9652";
  is_9652 = 1;
 } else {
  hdsp->card_name = "RME HDSP 9632";
  hdsp->max_channels = 16;
  is_9632 = 1;
 }

 if ((err = pci_enable_device(pci)) < 0)
  return err;

 pci_set_master(hdsp->pci);

 if ((err = pci_request_regions(pci, "hdsp")) < 0)
  return err;
 hdsp->port = pci_resource_start(pci, 0);
 if ((hdsp->iobase = ioremap_nocache(hdsp->port, HDSP_IO_EXTENT)) == ((void*)0)) {
  dev_err(hdsp->card->dev, "unable to remap region 0x%lx-0x%lx\n",
   hdsp->port, hdsp->port + HDSP_IO_EXTENT - 1);
  return -EBUSY;
 }

 if (request_irq(pci->irq, snd_hdsp_interrupt, IRQF_SHARED,
   KBUILD_MODNAME, hdsp)) {
  dev_err(hdsp->card->dev, "unable to use IRQ %d\n", pci->irq);
  return -EBUSY;
 }

 hdsp->irq = pci->irq;
 hdsp->precise_ptr = 0;
 hdsp->use_midi_tasklet = 1;
 hdsp->dds_value = 0;

 if ((err = snd_hdsp_initialize_memory(hdsp)) < 0)
  return err;

 if (!is_9652 && !is_9632) {


  err = hdsp_wait_for_iobox(hdsp, 1000, 10);

  if (err < 0)
   return err;

  if ((hdsp_read (hdsp, HDSP_statusRegister) & HDSP_DllError) != 0) {
   if ((err = hdsp_request_fw_loader(hdsp)) < 0)




    dev_err(hdsp->card->dev,
     "couldn't get firmware from userspace. try using hdsploader\n");
   else

    return 0;

   dev_info(hdsp->card->dev,
     "card initialization pending : waiting for firmware\n");
   if ((err = snd_hdsp_create_hwdep(card, hdsp)) < 0)
    return err;
   return 0;
  } else {
   dev_info(hdsp->card->dev,
     "Firmware already present, initializing card.\n");
   if (hdsp_read(hdsp, HDSP_status2Register) & HDSP_version2)
    hdsp->io_type = RPM;
   else if (hdsp_read(hdsp, HDSP_status2Register) & HDSP_version1)
    hdsp->io_type = Multiface;
   else
    hdsp->io_type = Digiface;
  }
 }

 if ((err = snd_hdsp_enable_io(hdsp)) != 0)
  return err;

 if (is_9652)
         hdsp->io_type = H9652;

 if (is_9632)
  hdsp->io_type = H9632;

 if ((err = snd_hdsp_create_hwdep(card, hdsp)) < 0)
  return err;

 snd_hdsp_initialize_channels(hdsp);
 snd_hdsp_initialize_midi_flush(hdsp);

 hdsp->state |= HDSP_FirmwareLoaded;

 if ((err = snd_hdsp_create_alsa_devices(card, hdsp)) < 0)
  return err;

 return 0;
}
