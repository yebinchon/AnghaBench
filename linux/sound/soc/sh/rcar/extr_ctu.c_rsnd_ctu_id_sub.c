
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_mod {int id; } ;



__attribute__((used)) static int rsnd_ctu_id_sub(struct rsnd_mod *mod)
{




 return mod->id % 4;
}
