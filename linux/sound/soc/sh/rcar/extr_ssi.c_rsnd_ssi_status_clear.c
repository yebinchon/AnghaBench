
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_mod {int dummy; } ;


 int SSISR ;
 int rsnd_mod_write (struct rsnd_mod*,int ,int ) ;

__attribute__((used)) static void rsnd_ssi_status_clear(struct rsnd_mod *mod)
{
 rsnd_mod_write(mod, SSISR, 0);
}
