
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_ssiu {int id_sub; } ;
struct rsnd_mod {int dummy; } ;


 struct rsnd_ssiu* rsnd_mod_to_ssiu (struct rsnd_mod*) ;

__attribute__((used)) static int rsnd_ssiu_id_sub(struct rsnd_mod *mod)
{
 struct rsnd_ssiu *ssiu = rsnd_mod_to_ssiu(mod);


 return ssiu->id_sub;
}
