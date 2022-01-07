
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {scalar_t__ cmd; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_cmd {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 int rsnd_cmd_nr (struct rsnd_priv*) ;
 struct rsnd_mod* rsnd_mod_get (struct rsnd_cmd*) ;

__attribute__((used)) static struct rsnd_mod *rsnd_cmd_mod_get(struct rsnd_priv *priv, int id)
{
 if (WARN_ON(id < 0 || id >= rsnd_cmd_nr(priv)))
  id = 0;

 return rsnd_mod_get((struct rsnd_cmd *)(priv->cmd) + id);
}
