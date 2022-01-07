
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int rsnd_cmd_attach (struct rsnd_dai_stream*,int ) ;
 int rsnd_mod_id (struct rsnd_mod*) ;

__attribute__((used)) static int rsnd_ctu_probe_(struct rsnd_mod *mod,
      struct rsnd_dai_stream *io,
      struct rsnd_priv *priv)
{
 return rsnd_cmd_attach(io, rsnd_mod_id(mod));
}
