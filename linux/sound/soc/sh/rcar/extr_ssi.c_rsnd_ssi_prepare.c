
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int rsnd_ssi_master_clk_start (struct rsnd_mod*,struct rsnd_dai_stream*) ;

__attribute__((used)) static int rsnd_ssi_prepare(struct rsnd_mod *mod,
       struct rsnd_dai_stream *io,
       struct rsnd_priv *priv)
{
 return rsnd_ssi_master_clk_start(mod, io);
}
