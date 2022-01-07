
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_ssiu {int dummy; } ;
struct rsnd_priv {scalar_t__ ssiu; } ;
struct rsnd_mod {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 struct rsnd_mod* rsnd_mod_get (struct rsnd_ssiu*) ;
 int rsnd_ssiu_nr (struct rsnd_priv*) ;

__attribute__((used)) static struct rsnd_mod *rsnd_ssiu_mod_get(struct rsnd_priv *priv, int id)
{
 if (WARN_ON(id < 0 || id >= rsnd_ssiu_nr(priv)))
  id = 0;

 return rsnd_mod_get((struct rsnd_ssiu *)(priv->ssiu) + id);
}
