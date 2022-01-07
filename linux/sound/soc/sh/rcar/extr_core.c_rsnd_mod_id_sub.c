
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsnd_mod {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* id_sub ) (struct rsnd_mod*) ;} ;


 int stub1 (struct rsnd_mod*) ;

int rsnd_mod_id_sub(struct rsnd_mod *mod)
{
 if ((mod)->ops->id_sub)
  return (mod)->ops->id_sub(mod);

 return 0;
}
