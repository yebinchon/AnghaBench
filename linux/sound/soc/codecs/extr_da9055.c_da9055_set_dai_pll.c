
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct snd_soc_dai {int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct da9055_priv {scalar_t__ master; } ;
struct TYPE_3__ {unsigned int fref; scalar_t__ mode; unsigned int fout; size_t frac_top; size_t frac_bot; size_t integer; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int DA9055_PLL_CTRL ;
 int DA9055_PLL_EN ;
 int DA9055_PLL_FRAC_BOT ;
 int DA9055_PLL_FRAC_TOP ;
 int DA9055_PLL_INTEGER ;
 int EINVAL ;
 TYPE_1__* da9055_pll_div ;
 int dev_err (int ,char*) ;
 struct da9055_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,size_t) ;

__attribute__((used)) static int da9055_set_dai_pll(struct snd_soc_dai *codec_dai, int pll_id,
         int source, unsigned int fref, unsigned int fout)
{
 struct snd_soc_component *component = codec_dai->component;
 struct da9055_priv *da9055 = snd_soc_component_get_drvdata(component);

 u8 pll_frac_top, pll_frac_bot, pll_integer, cnt;


 snd_soc_component_update_bits(component, DA9055_PLL_CTRL, DA9055_PLL_EN, 0);


 if (!da9055->master && (fout != 2822400))
  goto pll_err;


 for (cnt = 0; cnt < ARRAY_SIZE(da9055_pll_div); cnt++) {

  if ((fref == da9055_pll_div[cnt].fref) &&
      (da9055->master == da9055_pll_div[cnt].mode) &&
      (fout == da9055_pll_div[cnt].fout)) {

   pll_frac_top = da9055_pll_div[cnt].frac_top;
   pll_frac_bot = da9055_pll_div[cnt].frac_bot;
   pll_integer = da9055_pll_div[cnt].integer;
   break;
  }
 }
 if (cnt >= ARRAY_SIZE(da9055_pll_div))
  goto pll_err;


 snd_soc_component_write(component, DA9055_PLL_FRAC_TOP, pll_frac_top);
 snd_soc_component_write(component, DA9055_PLL_FRAC_BOT, pll_frac_bot);
 snd_soc_component_write(component, DA9055_PLL_INTEGER, pll_integer);

 return 0;
pll_err:
 dev_err(codec_dai->dev, "Error in setting up PLL\n");
 return -EINVAL;
}
