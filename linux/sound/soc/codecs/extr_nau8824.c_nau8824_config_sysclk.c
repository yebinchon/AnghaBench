
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct nau8824 {int dev; struct regmap* regmap; } ;


 int EINVAL ;
 int HZ ;






 int NAU8824_CLK_SRC_MASK ;
 int NAU8824_CLK_SRC_MCLK ;
 int NAU8824_CLK_SRC_VCO ;
 int NAU8824_DCO_EN ;
 int NAU8824_FLL_CLK_SRC_BLK ;
 int NAU8824_FLL_CLK_SRC_FS ;
 int NAU8824_FLL_CLK_SRC_MASK ;
 int NAU8824_FLL_CLK_SRC_MCLK ;
 int NAU8824_REG_CLK_DIVIDER ;
 int NAU8824_REG_FLL3 ;
 int NAU8824_REG_FLL6 ;
 int dev_dbg (int ,char*,unsigned int,int) ;
 int dev_err (int ,char*,int) ;
 int nau8824_sema_acquire (struct nau8824*,int ) ;
 int nau8824_sema_release (struct nau8824*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static int nau8824_config_sysclk(struct nau8824 *nau8824,
 int clk_id, unsigned int freq)
{
 struct regmap *regmap = nau8824->regmap;

 switch (clk_id) {
 case 133:
  regmap_update_bits(regmap, NAU8824_REG_CLK_DIVIDER,
   NAU8824_CLK_SRC_MASK, NAU8824_CLK_SRC_MCLK);
  regmap_update_bits(regmap, NAU8824_REG_FLL6,
   NAU8824_DCO_EN, 0);
  break;

 case 128:
  nau8824_sema_acquire(nau8824, HZ);
  regmap_update_bits(regmap, NAU8824_REG_CLK_DIVIDER,
   NAU8824_CLK_SRC_MASK, NAU8824_CLK_SRC_MCLK);
  regmap_update_bits(regmap, NAU8824_REG_FLL6,
   NAU8824_DCO_EN, 0);
  nau8824_sema_release(nau8824);
  break;

 case 129:
  regmap_update_bits(regmap, NAU8824_REG_FLL6,
   NAU8824_DCO_EN, NAU8824_DCO_EN);
  regmap_update_bits(regmap, NAU8824_REG_CLK_DIVIDER,
   NAU8824_CLK_SRC_MASK, NAU8824_CLK_SRC_VCO);
  break;

 case 130:
  nau8824_sema_acquire(nau8824, HZ);
  regmap_update_bits(regmap, NAU8824_REG_FLL3,
   NAU8824_FLL_CLK_SRC_MASK, NAU8824_FLL_CLK_SRC_MCLK);
  nau8824_sema_release(nau8824);
  break;

 case 132:
  nau8824_sema_acquire(nau8824, HZ);
  regmap_update_bits(regmap, NAU8824_REG_FLL3,
   NAU8824_FLL_CLK_SRC_MASK, NAU8824_FLL_CLK_SRC_BLK);
  nau8824_sema_release(nau8824);
  break;

 case 131:
  nau8824_sema_acquire(nau8824, HZ);
  regmap_update_bits(regmap, NAU8824_REG_FLL3,
   NAU8824_FLL_CLK_SRC_MASK, NAU8824_FLL_CLK_SRC_FS);
  nau8824_sema_release(nau8824);
  break;

 default:
  dev_err(nau8824->dev, "Invalid clock id (%d)\n", clk_id);
  return -EINVAL;
 }

 dev_dbg(nau8824->dev, "Sysclk is %dHz and clock id is %d\n", freq,
  clk_id);

 return 0;
}
