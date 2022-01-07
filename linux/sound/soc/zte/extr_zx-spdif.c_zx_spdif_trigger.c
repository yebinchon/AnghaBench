
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zx_spdif_info {scalar_t__ reg_base; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;






 scalar_t__ ZX_FIFOCTRL ;
 int ZX_FIFOCTRL_TX_FIFO_RST ;
 struct zx_spdif_info* dev_get_drvdata (int ) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;
 int zx_spdif_cfg_tx (scalar_t__,int) ;

__attribute__((used)) static int zx_spdif_trigger(struct snd_pcm_substream *substream, int cmd,
       struct snd_soc_dai *dai)
{
 u32 val;
 struct zx_spdif_info *zx_spdif = dev_get_drvdata(dai->dev);
 int ret = 0;

 switch (cmd) {
 case 130:
  val = readl_relaxed(zx_spdif->reg_base + ZX_FIFOCTRL);
  val |= ZX_FIFOCTRL_TX_FIFO_RST;
  writel_relaxed(val, zx_spdif->reg_base + ZX_FIFOCTRL);

 case 131:
 case 132:
  zx_spdif_cfg_tx(zx_spdif->reg_base, 1);
  break;

 case 129:
 case 128:
 case 133:
  zx_spdif_cfg_tx(zx_spdif->reg_base, 0);
  break;

 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
