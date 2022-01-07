
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int CMD_CTRL ;
 int rsnd_mod_write (struct rsnd_mod*,int ,int) ;

__attribute__((used)) static int rsnd_cmd_start(struct rsnd_mod *mod,
     struct rsnd_dai_stream *io,
     struct rsnd_priv *priv)
{
 rsnd_mod_write(mod, CMD_CTRL, 0x10);

 return 0;
}
