
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct nau8825 {int dev; int mclk_freq; int mclk; struct regmap* regmap; } ;


 int EINVAL ;
 int HZ ;






 int NAU8825_CLK_MCLK_SRC_MASK ;
 int NAU8825_CLK_SRC_MASK ;
 int NAU8825_CLK_SRC_VCO ;
 int NAU8825_DCO_EN ;
 int NAU8825_FLL_CLK_SRC_BLK ;
 int NAU8825_FLL_CLK_SRC_FS ;
 int NAU8825_FLL_CLK_SRC_MASK ;
 int NAU8825_FLL_CLK_SRC_MCLK ;
 int NAU8825_FLL_RATIO_MASK ;
 int NAU8825_GAIN_ERR_MASK ;
 int NAU8825_GAIN_ERR_SFT ;
 int NAU8825_ICTRL_LATCH_MASK ;
 int NAU8825_REG_CLK_DIVIDER ;
 int NAU8825_REG_FLL1 ;
 int NAU8825_REG_FLL3 ;
 int NAU8825_REG_FLL6 ;
 int NAU8825_SDM_EN ;
 int clk_disable_unprepare (int ) ;
 int dev_dbg (int ,char*,unsigned int,int) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int nau8825_configure_mclk_as_sysclk (struct regmap*) ;
 int nau8825_is_jack_inserted (struct regmap*) ;
 int nau8825_mclk_prepare (struct nau8825*,unsigned int) ;
 int nau8825_sema_acquire (struct nau8825*,int) ;
 int nau8825_sema_release (struct nau8825*) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;

__attribute__((used)) static int nau8825_configure_sysclk(struct nau8825 *nau8825, int clk_id,
 unsigned int freq)
{
 struct regmap *regmap = nau8825->regmap;
 int ret;

 switch (clk_id) {
 case 133:

  nau8825_configure_mclk_as_sysclk(regmap);
  if (nau8825->mclk_freq) {
   clk_disable_unprepare(nau8825->mclk);
   nau8825->mclk_freq = 0;
  }

  break;
 case 128:





  nau8825_sema_acquire(nau8825, 3 * HZ);
  nau8825_configure_mclk_as_sysclk(regmap);

  regmap_update_bits(regmap, NAU8825_REG_CLK_DIVIDER,
   NAU8825_CLK_MCLK_SRC_MASK, 0);

  nau8825_sema_release(nau8825);

  ret = nau8825_mclk_prepare(nau8825, freq);
  if (ret)
   return ret;

  break;
 case 129:
  if (nau8825_is_jack_inserted(nau8825->regmap)) {
   regmap_update_bits(regmap, NAU8825_REG_FLL6,
    NAU8825_DCO_EN, NAU8825_DCO_EN);
   regmap_update_bits(regmap, NAU8825_REG_CLK_DIVIDER,
    NAU8825_CLK_SRC_MASK, NAU8825_CLK_SRC_VCO);



   regmap_update_bits(regmap, NAU8825_REG_CLK_DIVIDER,
    NAU8825_CLK_MCLK_SRC_MASK, 0xf);
   regmap_update_bits(regmap, NAU8825_REG_FLL1,
    NAU8825_ICTRL_LATCH_MASK |
    NAU8825_FLL_RATIO_MASK, 0x10);
   regmap_update_bits(regmap, NAU8825_REG_FLL6,
    NAU8825_SDM_EN, NAU8825_SDM_EN);
  } else {



   nau8825_configure_mclk_as_sysclk(regmap);
   dev_warn(nau8825->dev, "Disable clock for power saving when no headset connected\n");
  }
  if (nau8825->mclk_freq) {
   clk_disable_unprepare(nau8825->mclk);
   nau8825->mclk_freq = 0;
  }

  break;
 case 130:





  nau8825_sema_acquire(nau8825, 3 * HZ);




  regmap_update_bits(regmap, NAU8825_REG_FLL3,
   NAU8825_FLL_CLK_SRC_MASK | NAU8825_GAIN_ERR_MASK,
   NAU8825_FLL_CLK_SRC_MCLK | 0);

  nau8825_sema_release(nau8825);

  ret = nau8825_mclk_prepare(nau8825, freq);
  if (ret)
   return ret;

  break;
 case 132:





  nau8825_sema_acquire(nau8825, 3 * HZ);






  regmap_update_bits(regmap, NAU8825_REG_FLL3,
   NAU8825_FLL_CLK_SRC_MASK | NAU8825_GAIN_ERR_MASK,
   NAU8825_FLL_CLK_SRC_BLK |
   (0xf << NAU8825_GAIN_ERR_SFT));

  nau8825_sema_release(nau8825);

  if (nau8825->mclk_freq) {
   clk_disable_unprepare(nau8825->mclk);
   nau8825->mclk_freq = 0;
  }

  break;
 case 131:





  nau8825_sema_acquire(nau8825, 3 * HZ);






  regmap_update_bits(regmap, NAU8825_REG_FLL3,
   NAU8825_FLL_CLK_SRC_MASK | NAU8825_GAIN_ERR_MASK,
   NAU8825_FLL_CLK_SRC_FS |
   (0xf << NAU8825_GAIN_ERR_SFT));

  nau8825_sema_release(nau8825);

  if (nau8825->mclk_freq) {
   clk_disable_unprepare(nau8825->mclk);
   nau8825->mclk_freq = 0;
  }

  break;
 default:
  dev_err(nau8825->dev, "Invalid clock id (%d)\n", clk_id);
  return -EINVAL;
 }

 dev_dbg(nau8825->dev, "Sysclk is %dHz and clock id is %d\n", freq,
  clk_id);
 return 0;
}
