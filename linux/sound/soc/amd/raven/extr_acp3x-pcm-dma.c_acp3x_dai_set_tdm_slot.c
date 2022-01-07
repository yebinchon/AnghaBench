
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct snd_soc_dai {int dummy; } ;
struct i2s_dev_data {int tdm_fmt; scalar_t__ acp3x_base; } ;


 int EINVAL ;
 int FRM_LEN ;




 scalar_t__ mmACP_BTTDM_IRER ;
 scalar_t__ mmACP_BTTDM_ITER ;
 scalar_t__ mmACP_BTTDM_RXFRMT ;
 scalar_t__ mmACP_BTTDM_TXFRMT ;
 int rv_readl (scalar_t__) ;
 int rv_writel (int,scalar_t__) ;
 struct i2s_dev_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int acp3x_dai_set_tdm_slot(struct snd_soc_dai *cpu_dai, u32 tx_mask,
      u32 rx_mask, int slots, int slot_width)
{
 u32 val = 0;
 u16 slot_len;

 struct i2s_dev_data *adata = snd_soc_dai_get_drvdata(cpu_dai);

 switch (slot_width) {
 case 128:
  slot_len = 8;
  break;
 case 131:
  slot_len = 16;
  break;
 case 130:
  slot_len = 24;
  break;
 case 129:
  slot_len = 0;
  break;
 default:
  return -EINVAL;
 }

 val = rv_readl(adata->acp3x_base + mmACP_BTTDM_ITER);
 rv_writel((val | 0x2), adata->acp3x_base + mmACP_BTTDM_ITER);
 val = rv_readl(adata->acp3x_base + mmACP_BTTDM_IRER);
 rv_writel((val | 0x2), adata->acp3x_base + mmACP_BTTDM_IRER);

 val = (FRM_LEN | (slots << 15) | (slot_len << 18));
 rv_writel(val, adata->acp3x_base + mmACP_BTTDM_TXFRMT);
 rv_writel(val, adata->acp3x_base + mmACP_BTTDM_RXFRMT);

 adata->tdm_fmt = val;
 return 0;
}
