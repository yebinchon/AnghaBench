
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_priv {int dummy; } ;
struct rsnd_dai {int dummy; } ;
struct device {int dummy; } ;


 int SWL_16 ;
 int SWL_24 ;
 int SWL_32 ;
 int dev_err (struct device*,char*,int) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;
 struct rsnd_priv* rsnd_rdai_to_priv (struct rsnd_dai*) ;
 int rsnd_rdai_width_get (struct rsnd_dai*) ;

__attribute__((used)) static u32 rsnd_rdai_width_to_swl(struct rsnd_dai *rdai)
{
 struct rsnd_priv *priv = rsnd_rdai_to_priv(rdai);
 struct device *dev = rsnd_priv_to_dev(priv);
 int width = rsnd_rdai_width_get(rdai);

 switch (width) {
 case 32: return SWL_32;
 case 24: return SWL_24;
 case 16: return SWL_16;
 }

 dev_err(dev, "unsupported slot width value: %d\n", width);
 return 0;
}
