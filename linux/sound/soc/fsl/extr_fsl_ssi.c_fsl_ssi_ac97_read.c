
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_ac97 {int dummy; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int ac97_reg_lock; int clk; struct regmap* regs; } ;


 int REG_SSI_SACADD ;
 int REG_SSI_SACDAT ;
 int REG_SSI_SACNT ;
 int SSI_SACNT_RD ;
 int SSI_SACNT_RDWR_MASK ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 TYPE_1__* fsl_ac97_data ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int regmap_write (struct regmap*,int ,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static unsigned short fsl_ssi_ac97_read(struct snd_ac97 *ac97,
     unsigned short reg)
{
 struct regmap *regs = fsl_ac97_data->regs;
 unsigned short val = 0;
 u32 reg_val;
 unsigned int lreg;
 int ret;

 mutex_lock(&fsl_ac97_data->ac97_reg_lock);

 ret = clk_prepare_enable(fsl_ac97_data->clk);
 if (ret) {
  pr_err("ac97 read clk_prepare_enable failed: %d\n", ret);
  goto ret_unlock;
 }

 lreg = (reg & 0x7f) << 12;
 regmap_write(regs, REG_SSI_SACADD, lreg);
 regmap_update_bits(regs, REG_SSI_SACNT,
      SSI_SACNT_RDWR_MASK, SSI_SACNT_RD);

 udelay(100);

 regmap_read(regs, REG_SSI_SACDAT, &reg_val);
 val = (reg_val >> 4) & 0xffff;

 clk_disable_unprepare(fsl_ac97_data->clk);

ret_unlock:
 mutex_unlock(&fsl_ac97_data->ac97_reg_lock);
 return val;
}
