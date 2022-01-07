
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct device {int dummy; } ;


 int dev_warn (struct device*,char*,int ) ;
 int rsnd_mod_name (struct rsnd_mod*) ;
 struct rsnd_priv* rsnd_mod_to_priv (struct rsnd_mod*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;
 int rsnd_ssi_status_get (struct rsnd_mod*) ;
 int udelay (int) ;

__attribute__((used)) static void rsnd_ssi_status_check(struct rsnd_mod *mod,
      u32 bit)
{
 struct rsnd_priv *priv = rsnd_mod_to_priv(mod);
 struct device *dev = rsnd_priv_to_dev(priv);
 u32 status;
 int i;

 for (i = 0; i < 1024; i++) {
  status = rsnd_ssi_status_get(mod);
  if (status & bit)
   return;

  udelay(5);
 }

 dev_warn(dev, "%s status check failed\n", rsnd_mod_name(mod));
}
