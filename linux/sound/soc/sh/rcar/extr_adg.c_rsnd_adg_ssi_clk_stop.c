
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_mod {int dummy; } ;


 int rsnd_adg_set_ssi_clk (struct rsnd_mod*,int ) ;

int rsnd_adg_ssi_clk_stop(struct rsnd_mod *ssi_mod)
{
 rsnd_adg_set_ssi_clk(ssi_mod, 0);

 return 0;
}
