
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ i2s_mclk_cfg; scalar_t__ i2s_cfg; } ;
struct cygnus_aio_port {unsigned int bit_per_frame; unsigned int lrclk; unsigned int mclk; int port_type; TYPE_2__* cygaud; TYPE_1__ regs; } ;
struct TYPE_4__ {int dev; scalar_t__ audio; } ;


 int EINVAL ;
 int I2S_OUT_CFGX_SCLKS_PER_1FS_DIV32 ;
 int I2S_OUT_MCLKRATE_SHIFT ;


 int dev_dbg (int ,char*,int,...) ;
 int dev_err (int ,char*,...) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int cygnus_ssp_set_clocks(struct cygnus_aio_port *aio)
{
 u32 value;
 u32 mask = 0xf;
 u32 sclk;
 u32 mclk_rate;
 unsigned int bit_rate;
 unsigned int ratio;

 bit_rate = aio->bit_per_frame * aio->lrclk;






 if ((aio->mclk % bit_rate) != 0)
  return -EINVAL;

 ratio = aio->mclk / bit_rate;
 switch (ratio) {
 case 2:
 case 4:
 case 6:
 case 8:
 case 10:
 case 12:
 case 14:
  mclk_rate = ratio / 2;
  break;

 default:
  dev_err(aio->cygaud->dev,
   "Invalid combination of MCLK and BCLK\n");
  dev_err(aio->cygaud->dev, "lrclk = %u, bits/frame = %u, mclk = %u\n",
   aio->lrclk, aio->bit_per_frame, aio->mclk);
  return -EINVAL;
 }


 switch (aio->port_type) {
 case 128:
  sclk = aio->bit_per_frame;
  if (sclk == 512)
   sclk = 0;


  sclk /= 32;


  value = readl(aio->cygaud->audio + aio->regs.i2s_cfg);
  value &= ~(mask << I2S_OUT_CFGX_SCLKS_PER_1FS_DIV32);
  value |= sclk << I2S_OUT_CFGX_SCLKS_PER_1FS_DIV32;
  writel(value, aio->cygaud->audio + aio->regs.i2s_cfg);
  dev_dbg(aio->cygaud->dev,
   "SCLKS_PER_1FS_DIV32 = 0x%x\n", value);
  break;
 case 129:
  break;
 default:
  dev_err(aio->cygaud->dev, "Unknown port type\n");
  return -EINVAL;
 }


 value = readl(aio->cygaud->audio + aio->regs.i2s_mclk_cfg);
 value &= ~(0xf << I2S_OUT_MCLKRATE_SHIFT);
 value |= (mclk_rate << I2S_OUT_MCLKRATE_SHIFT);
 writel(value, aio->cygaud->audio + aio->regs.i2s_mclk_cfg);

 dev_dbg(aio->cygaud->dev, "mclk cfg reg = 0x%x\n", value);
 dev_dbg(aio->cygaud->dev, "bits per frame = %u, mclk = %u Hz, lrclk = %u Hz\n",
   aio->bit_per_frame, aio->mclk, aio->lrclk);
 return 0;
}
