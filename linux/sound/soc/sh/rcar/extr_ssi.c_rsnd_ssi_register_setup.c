
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_ssi {int wsr; int cr_own; int cr_clk; int cr_mode; int cr_en; } ;
struct rsnd_mod {int dummy; } ;


 int SSICR ;
 int SSIWSR ;
 struct rsnd_ssi* rsnd_mod_to_ssi (struct rsnd_mod*) ;
 int rsnd_mod_write (struct rsnd_mod*,int ,int) ;

__attribute__((used)) static void rsnd_ssi_register_setup(struct rsnd_mod *mod)
{
 struct rsnd_ssi *ssi = rsnd_mod_to_ssi(mod);

 rsnd_mod_write(mod, SSIWSR, ssi->wsr);
 rsnd_mod_write(mod, SSICR, ssi->cr_own |
     ssi->cr_clk |
     ssi->cr_mode |
     ssi->cr_en);
}
