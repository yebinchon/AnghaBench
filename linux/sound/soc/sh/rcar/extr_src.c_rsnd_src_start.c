
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int SRC_CTRL ;
 scalar_t__ rsnd_io_to_mod_dvc (struct rsnd_dai_stream*) ;
 int rsnd_mod_write (struct rsnd_mod*,int ,int) ;
 int rsnd_src_sync_is_enabled (struct rsnd_mod*) ;

__attribute__((used)) static int rsnd_src_start(struct rsnd_mod *mod,
     struct rsnd_dai_stream *io,
     struct rsnd_priv *priv)
{
 u32 val;






 val = (rsnd_io_to_mod_dvc(io) && !rsnd_src_sync_is_enabled(mod)) ?
  0x01 : 0x11;

 rsnd_mod_write(mod, SRC_CTRL, val);

 return 0;
}
