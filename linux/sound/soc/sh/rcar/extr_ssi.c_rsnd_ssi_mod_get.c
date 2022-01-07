
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 struct rsnd_mod* rsnd_mod_get (int ) ;
 int rsnd_ssi_get (struct rsnd_priv*,int) ;
 int rsnd_ssi_nr (struct rsnd_priv*) ;

struct rsnd_mod *rsnd_ssi_mod_get(struct rsnd_priv *priv, int id)
{
 if (WARN_ON(id < 0 || id >= rsnd_ssi_nr(priv)))
  id = 0;

 return rsnd_mod_get(rsnd_ssi_get(priv, id));
}
