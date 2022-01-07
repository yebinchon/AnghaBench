
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_azf3328 {unsigned int shadow_reg_ctrl_6AH; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int IDX_IO_6AH ;
 int dev_dbg (int ,char*,unsigned int,int,unsigned int) ;
 int snd_azf3328_ctrl_outw (struct snd_azf3328*,int ,unsigned int) ;

__attribute__((used)) static void
snd_azf3328_ctrl_reg_6AH_update(struct snd_azf3328 *chip,
     unsigned bitmask,
     bool enable
)
{
 bool do_mask = !enable;
 if (do_mask)
  chip->shadow_reg_ctrl_6AH |= bitmask;
 else
  chip->shadow_reg_ctrl_6AH &= ~bitmask;
 dev_dbg(chip->card->dev,
  "6AH_update mask 0x%04x do_mask %d: val 0x%04x\n",
  bitmask, do_mask, chip->shadow_reg_ctrl_6AH);
 snd_azf3328_ctrl_outw(chip, IDX_IO_6AH, chip->shadow_reg_ctrl_6AH);
}
