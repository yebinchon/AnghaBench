
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_mod {int id; } ;



int rsnd_mod_id_raw(struct rsnd_mod *mod)
{
 return mod->id;
}
