
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_mix {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;


 int A ;
 int B ;
 int C ;
 int D ;
 int MIX_MDBAR ;
 int MIX_MDBBR ;
 int MIX_MDBCR ;
 int MIX_MDBDR ;
 int dev_dbg (struct device*,char*,int ,int ,int ,int ) ;
 int rsnd_mix_get_vol (struct rsnd_mix*,int ) ;
 struct rsnd_mix* rsnd_mod_to_mix (struct rsnd_mod*) ;
 struct rsnd_priv* rsnd_mod_to_priv (struct rsnd_mod*) ;
 int rsnd_mod_write (struct rsnd_mod*,int ,int ) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;

__attribute__((used)) static void rsnd_mix_volume_parameter(struct rsnd_dai_stream *io,
          struct rsnd_mod *mod)
{
 struct rsnd_priv *priv = rsnd_mod_to_priv(mod);
 struct device *dev = rsnd_priv_to_dev(priv);
 struct rsnd_mix *mix = rsnd_mod_to_mix(mod);
 u32 volA = rsnd_mix_get_vol(mix, A);
 u32 volB = rsnd_mix_get_vol(mix, B);
 u32 volC = rsnd_mix_get_vol(mix, C);
 u32 volD = rsnd_mix_get_vol(mix, D);

 dev_dbg(dev, "MIX A/B/C/D = %02x/%02x/%02x/%02x\n",
  volA, volB, volC, volD);

 rsnd_mod_write(mod, MIX_MDBAR, volA);
 rsnd_mod_write(mod, MIX_MDBBR, volB);
 rsnd_mod_write(mod, MIX_MDBCR, volC);
 rsnd_mod_write(mod, MIX_MDBDR, volD);
}
