
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tscs454 {int sub_ram; int spk_ram; int dac_ram; int pll2; int pll1; int aifs_status_lock; int * aifs; int regmap; } ;
struct i2c_client {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int TSCS454_DAI_COUNT ;
 int aif_init (int *,int) ;
 int coeff_ram_init (int *) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int mutex_init (int *) ;
 int pll_init (int *,int) ;
 int tscs454_regmap_cfg ;

__attribute__((used)) static inline int tscs454_data_init(struct tscs454 *tscs454,
  struct i2c_client *i2c)
{
 int i;
 int ret;

 tscs454->regmap = devm_regmap_init_i2c(i2c, &tscs454_regmap_cfg);
 if (IS_ERR(tscs454->regmap)) {
  ret = PTR_ERR(tscs454->regmap);
  return ret;
 }

 for (i = 0; i < TSCS454_DAI_COUNT; i++)
  aif_init(&tscs454->aifs[i], i);

 mutex_init(&tscs454->aifs_status_lock);
 pll_init(&tscs454->pll1, 1);
 pll_init(&tscs454->pll2, 2);

 coeff_ram_init(&tscs454->dac_ram);
 coeff_ram_init(&tscs454->spk_ram);
 coeff_ram_init(&tscs454->sub_ram);

 return 0;
}
