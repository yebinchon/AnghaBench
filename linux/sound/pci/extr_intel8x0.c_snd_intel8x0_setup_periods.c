
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel8x0 {TYPE_1__* card; } ;
struct ichdev {unsigned long reg_offset; int size; int fragsize; int ack_reload; int ack; int fragsize1; int physbuf; int pos_shift; int frags; int lvi; int lvi_frag; scalar_t__ roff_sr; scalar_t__ position; scalar_t__ civ; int bdbar_addr; int * bdbar; } ;
typedef int __le32 ;
struct TYPE_2__ {int dev; } ;


 int ICH_BCIS ;
 int ICH_FIFOE ;
 int ICH_LVBCI ;
 int ICH_REG_LVI_MASK ;
 scalar_t__ ICH_REG_OFF_BDBAR ;
 scalar_t__ ICH_REG_OFF_CIV ;
 scalar_t__ ICH_REG_OFF_LVI ;
 int cpu_to_le32 (int) ;
 int dev_dbg (int ,char*,int,int,int,...) ;
 int iputbyte (struct intel8x0*,scalar_t__,int) ;
 int iputdword (struct intel8x0*,scalar_t__,int ) ;

__attribute__((used)) static void snd_intel8x0_setup_periods(struct intel8x0 *chip, struct ichdev *ichdev)
{
 int idx;
 __le32 *bdbar = ichdev->bdbar;
 unsigned long port = ichdev->reg_offset;

 iputdword(chip, port + ICH_REG_OFF_BDBAR, ichdev->bdbar_addr);
 if (ichdev->size == ichdev->fragsize) {
  ichdev->ack_reload = ichdev->ack = 2;
  ichdev->fragsize1 = ichdev->fragsize >> 1;
  for (idx = 0; idx < (ICH_REG_LVI_MASK + 1) * 2; idx += 4) {
   bdbar[idx + 0] = cpu_to_le32(ichdev->physbuf);
   bdbar[idx + 1] = cpu_to_le32(0x80000000 |
           ichdev->fragsize1 >> ichdev->pos_shift);
   bdbar[idx + 2] = cpu_to_le32(ichdev->physbuf + (ichdev->size >> 1));
   bdbar[idx + 3] = cpu_to_le32(0x80000000 |
           ichdev->fragsize1 >> ichdev->pos_shift);
  }
  ichdev->frags = 2;
 } else {
  ichdev->ack_reload = ichdev->ack = 1;
  ichdev->fragsize1 = ichdev->fragsize;
  for (idx = 0; idx < (ICH_REG_LVI_MASK + 1) * 2; idx += 2) {
   bdbar[idx + 0] = cpu_to_le32(ichdev->physbuf +
           (((idx >> 1) * ichdev->fragsize) %
            ichdev->size));
   bdbar[idx + 1] = cpu_to_le32(0x80000000 |
           ichdev->fragsize >> ichdev->pos_shift);




  }
  ichdev->frags = ichdev->size / ichdev->fragsize;
 }
 iputbyte(chip, port + ICH_REG_OFF_LVI, ichdev->lvi = ICH_REG_LVI_MASK);
 ichdev->civ = 0;
 iputbyte(chip, port + ICH_REG_OFF_CIV, 0);
 ichdev->lvi_frag = ICH_REG_LVI_MASK % ichdev->frags;
 ichdev->position = 0;







 iputbyte(chip, port + ichdev->roff_sr, ICH_FIFOE | ICH_BCIS | ICH_LVBCI);
}
