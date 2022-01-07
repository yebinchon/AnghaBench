
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct dma_chan {int dummy; } ;


 struct dma_chan* rsnd_dma_request_channel (int ,struct rsnd_mod*,char*) ;
 int rsnd_io_is_play (struct rsnd_dai_stream*) ;
 struct rsnd_priv* rsnd_mod_to_priv (struct rsnd_mod*) ;
 int rsnd_ssi_of_node (struct rsnd_priv*) ;
 scalar_t__ rsnd_ssi_use_busif (struct rsnd_dai_stream*) ;

__attribute__((used)) static struct dma_chan *rsnd_ssi_dma_req(struct rsnd_dai_stream *io,
      struct rsnd_mod *mod)
{
 struct rsnd_priv *priv = rsnd_mod_to_priv(mod);
 int is_play = rsnd_io_is_play(io);
 char *name;
 if (rsnd_ssi_use_busif(io))
  name = is_play ? "rxu" : "txu";
 else
  name = is_play ? "rx" : "tx";

 return rsnd_dma_request_channel(rsnd_ssi_of_node(priv),
     mod, name);
}
