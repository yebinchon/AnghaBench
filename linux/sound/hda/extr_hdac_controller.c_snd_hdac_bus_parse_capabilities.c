
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_bus {int dev; int remap_addr; int drsmcap; int spbcap; int ppcap; int gtscap; int mlcap; } ;


 unsigned int AZX_CAP_HDR_ID_MASK ;
 unsigned int AZX_CAP_HDR_ID_OFF ;
 unsigned int AZX_CAP_HDR_NXT_PTR_MASK ;
 unsigned int AZX_CAP_HDR_VER_MASK ;
 unsigned int AZX_CAP_HDR_VER_OFF ;





 unsigned int HDAC_MAX_CAPS ;
 int LLCH ;
 unsigned int _snd_hdac_chip_readl (struct hdac_bus*,unsigned int) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,...) ;
 unsigned int snd_hdac_chip_readw (struct hdac_bus*,int ) ;

int snd_hdac_bus_parse_capabilities(struct hdac_bus *bus)
{
 unsigned int cur_cap;
 unsigned int offset;
 unsigned int counter = 0;

 offset = snd_hdac_chip_readw(bus, LLCH);


 do {
  cur_cap = _snd_hdac_chip_readl(bus, offset);

  dev_dbg(bus->dev, "Capability version: 0x%x\n",
   (cur_cap & AZX_CAP_HDR_VER_MASK) >> AZX_CAP_HDR_VER_OFF);

  dev_dbg(bus->dev, "HDA capability ID: 0x%x\n",
   (cur_cap & AZX_CAP_HDR_ID_MASK) >> AZX_CAP_HDR_ID_OFF);

  if (cur_cap == -1) {
   dev_dbg(bus->dev, "Invalid capability reg read\n");
   break;
  }

  switch ((cur_cap & AZX_CAP_HDR_ID_MASK) >> AZX_CAP_HDR_ID_OFF) {
  case 130:
   dev_dbg(bus->dev, "Found ML capability\n");
   bus->mlcap = bus->remap_addr + offset;
   break;

  case 131:
   dev_dbg(bus->dev, "Found GTS capability offset=%x\n", offset);
   bus->gtscap = bus->remap_addr + offset;
   break;

  case 129:

   dev_dbg(bus->dev, "Found PP capability offset=%x\n", offset);
   bus->ppcap = bus->remap_addr + offset;
   break;

  case 128:

   dev_dbg(bus->dev, "Found SPB capability\n");
   bus->spbcap = bus->remap_addr + offset;
   break;

  case 132:

   dev_dbg(bus->dev, "Found DRSM capability\n");
   bus->drsmcap = bus->remap_addr + offset;
   break;

  default:
   dev_err(bus->dev, "Unknown capability %d\n", cur_cap);
   cur_cap = 0;
   break;
  }

  counter++;

  if (counter > HDAC_MAX_CAPS) {
   dev_err(bus->dev, "We exceeded HDAC capabilities!!!\n");
   break;
  }


  offset = cur_cap & AZX_CAP_HDR_NXT_PTR_MASK;

 } while (offset);

 return 0;
}
