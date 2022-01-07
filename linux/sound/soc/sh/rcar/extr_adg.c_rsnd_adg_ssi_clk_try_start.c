
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_adg {int ckr; int rbga_rate_for_441khz; int rbgb_rate_for_48khz; int rbgb; int rbga; } ;
struct device {int dummy; } ;


 int AUDIO_OUT_48 ;
 int BRGCKR ;
 int BRRA ;
 int BRRB ;
 int LRCLK_ASYNC ;
 int dev_dbg (struct device*,char*,char,int ) ;
 int rsnd_adg_clk_query (struct rsnd_priv*,unsigned int) ;
 int rsnd_adg_set_ssi_clk (struct rsnd_mod*,int) ;
 scalar_t__ rsnd_flags_has (struct rsnd_adg*,int ) ;
 int rsnd_mod_bset (struct rsnd_mod*,int ,int,int) ;
 struct rsnd_mod* rsnd_mod_get (struct rsnd_adg*) ;
 struct rsnd_priv* rsnd_mod_to_priv (struct rsnd_mod*) ;
 int rsnd_mod_write (struct rsnd_mod*,int ,int ) ;
 struct rsnd_adg* rsnd_priv_to_adg (struct rsnd_priv*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;

int rsnd_adg_ssi_clk_try_start(struct rsnd_mod *ssi_mod, unsigned int rate)
{
 struct rsnd_priv *priv = rsnd_mod_to_priv(ssi_mod);
 struct rsnd_adg *adg = rsnd_priv_to_adg(priv);
 struct device *dev = rsnd_priv_to_dev(priv);
 struct rsnd_mod *adg_mod = rsnd_mod_get(adg);
 int data;
 u32 ckr = 0;

 data = rsnd_adg_clk_query(priv, rate);
 if (data < 0)
  return data;

 rsnd_adg_set_ssi_clk(ssi_mod, data);

 if (rsnd_flags_has(adg, LRCLK_ASYNC)) {
  if (rsnd_flags_has(adg, AUDIO_OUT_48))
   ckr = 0x80000000;
 } else {
  if (0 == (rate % 8000))
   ckr = 0x80000000;
 }

 rsnd_mod_bset(adg_mod, BRGCKR, 0x80770000, adg->ckr | ckr);
 rsnd_mod_write(adg_mod, BRRA, adg->rbga);
 rsnd_mod_write(adg_mod, BRRB, adg->rbgb);

 dev_dbg(dev, "CLKOUT is based on BRG%c (= %dHz)\n",
  (ckr) ? 'B' : 'A',
  (ckr) ? adg->rbgb_rate_for_48khz :
   adg->rbga_rate_for_441khz);

 return 0;
}
