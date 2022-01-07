
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_at73c213 {TYPE_2__* board; TYPE_1__* ssc; } ;
struct TYPE_4__ {int dac_clk; } ;
struct TYPE_3__ {int regs; } ;


 int CR ;
 int CR_TXEN ;
 int DAC_AUXG ;
 int DAC_CTRL ;
 int DAC_CTRL_ONDACL ;
 int DAC_CTRL_ONDACR ;
 int DAC_CTRL_ONLNOL ;
 int DAC_CTRL_ONLNOR ;
 int DAC_LLIG ;
 int DAC_LLOG ;
 int DAC_LMPG ;
 int DAC_PRECH ;
 int DAC_PRECH_ONMSTR ;
 int DAC_RLIG ;
 int DAC_RLOG ;
 int DAC_RMPG ;
 int DAC_RST ;
 int PA_CTRL ;
 int PA_CTRL_APALP ;
 int PA_CTRL_APAPRECH ;
 int SSC_BIT (int ) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int msleep (int) ;
 int snd_at73c213_set_bitrate (struct snd_at73c213*) ;
 int snd_at73c213_write_reg (struct snd_at73c213*,int ,int) ;
 int ssc_writel (int ,int ,int ) ;

__attribute__((used)) static int snd_at73c213_chip_init(struct snd_at73c213 *chip)
{
 int retval;
 unsigned char dac_ctrl = 0;

 retval = snd_at73c213_set_bitrate(chip);
 if (retval)
  goto out;


 clk_enable(chip->board->dac_clk);


 retval = snd_at73c213_write_reg(chip, DAC_RST, 0x04);
 if (retval)
  goto out_clk;
 msleep(1);
 retval = snd_at73c213_write_reg(chip, DAC_RST, 0x03);
 if (retval)
  goto out_clk;


 retval = snd_at73c213_write_reg(chip, DAC_PRECH, 0xff);
 if (retval)
  goto out_clk;
 retval = snd_at73c213_write_reg(chip, PA_CTRL, (1<<PA_CTRL_APAPRECH));
 if (retval)
  goto out_clk;
 retval = snd_at73c213_write_reg(chip, DAC_CTRL,
   (1<<DAC_CTRL_ONLNOL) | (1<<DAC_CTRL_ONLNOR));
 if (retval)
  goto out_clk;

 msleep(50);


 retval = snd_at73c213_write_reg(chip, PA_CTRL,
   (1<<PA_CTRL_APALP) | 0x0f);
 if (retval)
  goto out_clk;

 msleep(450);


 retval = snd_at73c213_write_reg(chip, DAC_PRECH, (1<<DAC_PRECH_ONMSTR));
 if (retval)
  goto out_clk;

 msleep(1);


 dac_ctrl = (1<<DAC_CTRL_ONDACL) | (1<<DAC_CTRL_ONDACR)
  | (1<<DAC_CTRL_ONLNOL) | (1<<DAC_CTRL_ONLNOR);

 retval = snd_at73c213_write_reg(chip, DAC_CTRL, dac_ctrl);
 if (retval)
  goto out_clk;


 retval = snd_at73c213_write_reg(chip, DAC_LMPG, 0x3f);
 if (retval)
  goto out_clk;
 retval = snd_at73c213_write_reg(chip, DAC_RMPG, 0x3f);
 if (retval)
  goto out_clk;
 retval = snd_at73c213_write_reg(chip, DAC_LLOG, 0x3f);
 if (retval)
  goto out_clk;
 retval = snd_at73c213_write_reg(chip, DAC_RLOG, 0x3f);
 if (retval)
  goto out_clk;
 retval = snd_at73c213_write_reg(chip, DAC_LLIG, 0x11);
 if (retval)
  goto out_clk;
 retval = snd_at73c213_write_reg(chip, DAC_RLIG, 0x11);
 if (retval)
  goto out_clk;
 retval = snd_at73c213_write_reg(chip, DAC_AUXG, 0x11);
 if (retval)
  goto out_clk;


 ssc_writel(chip->ssc->regs, CR, SSC_BIT(CR_TXEN));

 goto out;

out_clk:
 clk_disable(chip->board->dac_clk);
out:
 return retval;
}
