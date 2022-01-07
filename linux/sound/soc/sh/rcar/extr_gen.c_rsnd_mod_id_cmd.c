
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsnd_mod {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* id_cmd ) (struct rsnd_mod*) ;} ;


 int rsnd_mod_id (struct rsnd_mod*) ;
 int stub1 (struct rsnd_mod*) ;

__attribute__((used)) static int rsnd_mod_id_cmd(struct rsnd_mod *mod)
{
 if (mod->ops->id_cmd)
  return mod->ops->id_cmd(mod);

 return rsnd_mod_id(mod);
}
