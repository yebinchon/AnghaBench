
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int type; } ;
struct rsnd_dai_stream {int dummy; } ;


 struct rsnd_mod* rsnd_cmd_mod_get (struct rsnd_priv*,int) ;
 int rsnd_dai_connect (struct rsnd_mod*,struct rsnd_dai_stream*,int ) ;
 struct rsnd_priv* rsnd_io_to_priv (struct rsnd_dai_stream*) ;

int rsnd_cmd_attach(struct rsnd_dai_stream *io, int id)
{
 struct rsnd_priv *priv = rsnd_io_to_priv(io);
 struct rsnd_mod *mod = rsnd_cmd_mod_get(priv, id);

 return rsnd_dai_connect(mod, io, mod->type);
}
