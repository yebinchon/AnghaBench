
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_mod {int dummy; } ;


 int RSND_SSI_CLK_PIN_SHARE ;
 int rsnd_flags_has (int ,int ) ;
 int rsnd_mod_to_ssi (struct rsnd_mod*) ;

int __rsnd_ssi_is_pin_sharing(struct rsnd_mod *mod)
{
 if (!mod)
  return 0;

 return !!(rsnd_flags_has(rsnd_mod_to_ssi(mod), RSND_SSI_CLK_PIN_SHARE));
}
