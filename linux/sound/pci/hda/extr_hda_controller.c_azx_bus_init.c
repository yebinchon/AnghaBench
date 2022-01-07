
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int use_posbuf; int corbrp_self_clear; int align_bdle_4k; int sync_write; int bdl_pos_adj; int snoop; } ;
struct hda_bus {char const* modelname; int mixer_assigned; int allow_bus_reset; TYPE_2__ core; int pci; int prepare_mutex; TYPE_1__* card; } ;
struct azx {scalar_t__* get_position; int driver_caps; TYPE_1__* card; int bdl_pos_adj; int pci; struct hda_bus bus; } ;
struct TYPE_3__ {int dev; } ;


 int AZX_DCAPS_4K_BDLE_BOUNDARY ;
 int AZX_DCAPS_CORBRP_SELF_CLEAR ;
 int AZX_DCAPS_SYNC_WRITE ;
 scalar_t__ azx_get_pos_lpib ;
 int azx_snoop (struct azx*) ;
 int bus_core_ops ;
 int dev_dbg (int ,char*) ;
 int mutex_init (int *) ;
 int snd_hdac_bus_init (TYPE_2__*,int ,int *) ;

int azx_bus_init(struct azx *chip, const char *model)
{
 struct hda_bus *bus = &chip->bus;
 int err;

 err = snd_hdac_bus_init(&bus->core, chip->card->dev, &bus_core_ops);
 if (err < 0)
  return err;

 bus->card = chip->card;
 mutex_init(&bus->prepare_mutex);
 bus->pci = chip->pci;
 bus->modelname = model;
 bus->mixer_assigned = -1;
 bus->core.snoop = azx_snoop(chip);
 if (chip->get_position[0] != azx_get_pos_lpib ||
     chip->get_position[1] != azx_get_pos_lpib)
  bus->core.use_posbuf = 1;
 bus->core.bdl_pos_adj = chip->bdl_pos_adj;
 if (chip->driver_caps & AZX_DCAPS_CORBRP_SELF_CLEAR)
  bus->core.corbrp_self_clear = 1;

 if (chip->driver_caps & AZX_DCAPS_4K_BDLE_BOUNDARY)
  bus->core.align_bdle_4k = 1;





 if (chip->driver_caps & AZX_DCAPS_SYNC_WRITE) {
  dev_dbg(chip->card->dev, "Enable sync_write for stable communication\n");
  bus->core.sync_write = 1;
  bus->allow_bus_reset = 1;
 }

 return 0;
}
