
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmac_gpio {int addr; int active_state; int active_val; int inactive_val; } ;
struct device_node {int dummy; } ;


 int DBG (char*,char const*,...) ;
 long ENODEV ;
 scalar_t__ IS_G4DA ;
 struct device_node* find_audio_device (char const*) ;
 struct device_node* find_compatible_audio_device (char const*) ;
 long irq_of_parse_and_map (struct device_node*,int ) ;
 int* of_get_property (struct device_node*,char const*,int *) ;
 int of_node_put (struct device_node*) ;
 int snd_printd (char*,char const*) ;
 int snd_printdd (char*,char const*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static long tumbler_find_device(const char *device, const char *platform,
    struct pmac_gpio *gp, int is_compatible)
{
 struct device_node *node;
 const u32 *base;
 u32 addr;
 long ret;

 if (is_compatible)
  node = find_compatible_audio_device(device);
 else
  node = find_audio_device(device);
 if (! node) {
  DBG("(W) cannot find audio device %s !\n", device);
  snd_printdd("cannot find device %s\n", device);
  return -ENODEV;
 }

 base = of_get_property(node, "AAPL,address", ((void*)0));
 if (! base) {
  base = of_get_property(node, "reg", ((void*)0));
  if (!base) {
   DBG("(E) cannot find address for device %s !\n", device);
   snd_printd("cannot find address for device %s\n", device);
   of_node_put(node);
   return -ENODEV;
  }
  addr = *base;
  if (addr < 0x50)
   addr += 0x50;
 } else
  addr = *base;

 gp->addr = addr & 0x0000ffff;

 base = of_get_property(node, "audio-gpio-active-state", ((void*)0));
 if (base) {
  gp->active_state = *base;
  gp->active_val = (*base) ? 0x5 : 0x4;
  gp->inactive_val = (*base) ? 0x4 : 0x5;
 } else {
  const u32 *prop = ((void*)0);
  gp->active_state = IS_G4DA
    && !strncmp(device, "keywest-gpio1", 13);
  gp->active_val = 0x4;
  gp->inactive_val = 0x5;




  if (platform)
   prop = of_get_property(node, platform, ((void*)0));
  if (prop) {
   if (prop[3] == 0x9 && prop[4] == 0x9) {
    gp->active_val = 0xd;
    gp->inactive_val = 0xc;
   }
   if (prop[3] == 0x1 && prop[4] == 0x1) {
    gp->active_val = 0x5;
    gp->inactive_val = 0x4;
   }
  }
 }

 DBG("(I) GPIO device %s found, offset: %x, active state: %d !\n",
     device, gp->addr, gp->active_state);

 ret = irq_of_parse_and_map(node, 0);
 of_node_put(node);
 return ret;
}
