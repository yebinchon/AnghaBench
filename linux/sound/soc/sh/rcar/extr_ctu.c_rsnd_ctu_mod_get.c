
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 int rsnd_ctu_get (struct rsnd_priv*,int) ;
 int rsnd_ctu_nr (struct rsnd_priv*) ;
 struct rsnd_mod* rsnd_mod_get (int ) ;

struct rsnd_mod *rsnd_ctu_mod_get(struct rsnd_priv *priv, int id)
{
 if (WARN_ON(id < 0 || id >= rsnd_ctu_nr(priv)))
  id = 0;

 return rsnd_mod_get(rsnd_ctu_get(priv, id));
}
