
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_dev {int pci; scalar_t__ init_done; } ;
struct hdac_bus {scalar_t__ irq; scalar_t__ remap_addr; } ;


 int CONFIG_SND_SOC_HDAC_HDMI ;
 int HDA_CODEC_IDX_CONTROLLER ;
 scalar_t__ IS_ENABLED (int ) ;
 struct skl_dev* bus_to_skl (struct hdac_bus*) ;
 int free_irq (scalar_t__,void*) ;
 int iounmap (scalar_t__) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int snd_hdac_bus_free_stream_pages (struct hdac_bus*) ;
 int snd_hdac_display_power (struct hdac_bus*,int ,int) ;
 int snd_hdac_ext_bus_exit (struct hdac_bus*) ;
 int snd_hdac_ext_stop_streams (struct hdac_bus*) ;
 int snd_hdac_i915_exit (struct hdac_bus*) ;
 int snd_hdac_link_free_all (struct hdac_bus*) ;
 int snd_hdac_stream_free_all (struct hdac_bus*) ;

__attribute__((used)) static int skl_free(struct hdac_bus *bus)
{
 struct skl_dev *skl = bus_to_skl(bus);

 skl->init_done = 0;

 snd_hdac_ext_stop_streams(bus);

 if (bus->irq >= 0)
  free_irq(bus->irq, (void *)bus);
 snd_hdac_bus_free_stream_pages(bus);
 snd_hdac_stream_free_all(bus);
 snd_hdac_link_free_all(bus);

 if (bus->remap_addr)
  iounmap(bus->remap_addr);

 pci_release_regions(skl->pci);
 pci_disable_device(skl->pci);

 snd_hdac_ext_bus_exit(bus);

 if (IS_ENABLED(CONFIG_SND_SOC_HDAC_HDMI)) {
  snd_hdac_display_power(bus, HDA_CODEC_IDX_CONTROLLER, 0);
  snd_hdac_i915_exit(bus);
 }

 return 0;
}
