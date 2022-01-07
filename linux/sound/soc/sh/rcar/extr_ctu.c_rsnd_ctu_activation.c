
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_mod {int dummy; } ;


 int CTU_SWRSR ;
 int rsnd_mod_write (struct rsnd_mod*,int ,int) ;

__attribute__((used)) static void rsnd_ctu_activation(struct rsnd_mod *mod)
{
 rsnd_mod_write(mod, CTU_SWRSR, 0);
 rsnd_mod_write(mod, CTU_SWRSR, 1);
}
