
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_card {char* driver; char* shortname; int longname; int dev; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hdac_bus {int irq; int addr; int codec_mask; } ;
struct device_node {int dummy; } ;
struct azx {unsigned short capture_streams; unsigned short playback_streams; unsigned short playback_index_offset; unsigned short num_streams; scalar_t__ capture_index_offset; struct snd_card* card; } ;


 int ENODEV ;
 int GCAP ;
 int IRQF_SHARED ;
 int KBUILD_MODNAME ;
 unsigned short NUM_CAPTURE_SD ;
 unsigned short NUM_PLAYBACK_SD ;
 int azx_alloc_stream_pages (struct azx*) ;
 struct hdac_bus* azx_bus (struct azx*) ;
 int azx_init_chip (struct azx*,int) ;
 int azx_init_streams (struct azx*) ;
 int azx_interrupt ;
 unsigned short azx_readw (struct azx*,int ) ;
 int dev_dbg (int ,char*,unsigned short) ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*) ;
 int devm_request_irq (int ,int,int ,int ,int ,struct azx*) ;
 int hda_tegra_init_chip (struct azx*,struct platform_device*) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int snprintf (int ,int,char*,char*,int ,int) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 int synchronize_irq (int) ;

__attribute__((used)) static int hda_tegra_first_init(struct azx *chip, struct platform_device *pdev)
{
 struct hdac_bus *bus = azx_bus(chip);
 struct snd_card *card = chip->card;
 int err;
 unsigned short gcap;
 int irq_id = platform_get_irq(pdev, 0);
 const char *sname, *drv_name = "tegra-hda";
 struct device_node *np = pdev->dev.of_node;

 err = hda_tegra_init_chip(chip, pdev);
 if (err)
  return err;

 err = devm_request_irq(chip->card->dev, irq_id, azx_interrupt,
        IRQF_SHARED, KBUILD_MODNAME, chip);
 if (err) {
  dev_err(chip->card->dev,
   "unable to request IRQ %d, disabling device\n",
   irq_id);
  return err;
 }
 bus->irq = irq_id;

 synchronize_irq(bus->irq);

 gcap = azx_readw(chip, GCAP);
 dev_dbg(card->dev, "chipset global capabilities = 0x%x\n", gcap);




 chip->capture_streams = (gcap >> 8) & 0x0f;
 chip->playback_streams = (gcap >> 12) & 0x0f;
 if (!chip->playback_streams && !chip->capture_streams) {

  chip->playback_streams = NUM_PLAYBACK_SD;
  chip->capture_streams = NUM_CAPTURE_SD;
 }
 chip->capture_index_offset = 0;
 chip->playback_index_offset = chip->capture_streams;
 chip->num_streams = chip->playback_streams + chip->capture_streams;


 err = azx_init_streams(chip);
 if (err < 0) {
  dev_err(card->dev, "failed to initialize streams: %d\n", err);
  return err;
 }

 err = azx_alloc_stream_pages(chip);
 if (err < 0) {
  dev_err(card->dev, "failed to allocate stream pages: %d\n",
   err);
  return err;
 }


 azx_init_chip(chip, 1);


 if (!bus->codec_mask) {
  dev_err(card->dev, "no codecs found!\n");
  return -ENODEV;
 }


 strncpy(card->driver, drv_name, sizeof(card->driver));

 sname = of_get_property(np, "nvidia,model", ((void*)0));
 if (!sname)
  sname = drv_name;
 if (strlen(sname) > sizeof(card->shortname))
  dev_info(card->dev, "truncating shortname for card\n");
 strncpy(card->shortname, sname, sizeof(card->shortname));


 snprintf(card->longname, sizeof(card->longname),
   "%s at 0x%lx irq %i",
   card->shortname, bus->addr, bus->irq);

 return 0;
}
