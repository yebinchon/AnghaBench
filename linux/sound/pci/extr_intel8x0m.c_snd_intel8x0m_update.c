
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel8x0m {int reg_lock; TYPE_1__* card; } ;
struct ichdev {unsigned long reg_offset; int civ; int position; int fragsize1; int size; int lvi; int lvi_frag; int frags; scalar_t__ ack; scalar_t__ ack_reload; scalar_t__ roff_sr; scalar_t__ substream; int * bdbar; scalar_t__ physbuf; } ;
struct TYPE_2__ {int dev; } ;


 int ICH_BCIS ;
 int ICH_FIFOE ;
 int ICH_LVBCI ;
 int ICH_REG_LVI_MASK ;
 scalar_t__ ICH_REG_OFF_CIV ;
 scalar_t__ ICH_REG_OFF_CR ;
 scalar_t__ ICH_REG_OFF_LVI ;
 scalar_t__ ICH_REG_OFF_PIV ;
 int cpu_to_le32 (scalar_t__) ;
 int dev_dbg (int ,char*,int,int ,int ,int ,int ,int ) ;
 int igetbyte (struct intel8x0m*,scalar_t__) ;
 int inb (scalar_t__) ;
 int inl (unsigned long) ;
 int iputbyte (struct intel8x0m*,scalar_t__,int) ;
 int snd_pcm_period_elapsed (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void snd_intel8x0m_update(struct intel8x0m *chip, struct ichdev *ichdev)
{
 unsigned long port = ichdev->reg_offset;
 int civ, i, step;
 int ack = 0;

 civ = igetbyte(chip, port + ICH_REG_OFF_CIV);
 if (civ == ichdev->civ) {

  step = 1;
  ichdev->civ++;
  ichdev->civ &= ICH_REG_LVI_MASK;
 } else {
  step = civ - ichdev->civ;
  if (step < 0)
   step += ICH_REG_LVI_MASK + 1;


  ichdev->civ = civ;
 }

 ichdev->position += step * ichdev->fragsize1;
 ichdev->position %= ichdev->size;
 ichdev->lvi += step;
 ichdev->lvi &= ICH_REG_LVI_MASK;
 iputbyte(chip, port + ICH_REG_OFF_LVI, ichdev->lvi);
 for (i = 0; i < step; i++) {
  ichdev->lvi_frag++;
  ichdev->lvi_frag %= ichdev->frags;
  ichdev->bdbar[ichdev->lvi * 2] = cpu_to_le32(ichdev->physbuf +
            ichdev->lvi_frag *
            ichdev->fragsize1);







  if (--ichdev->ack == 0) {
   ichdev->ack = ichdev->ack_reload;
   ack = 1;
  }
 }
 if (ack && ichdev->substream) {
  spin_unlock(&chip->reg_lock);
  snd_pcm_period_elapsed(ichdev->substream);
  spin_lock(&chip->reg_lock);
 }
 iputbyte(chip, port + ichdev->roff_sr, ICH_FIFOE | ICH_BCIS | ICH_LVBCI);
}
