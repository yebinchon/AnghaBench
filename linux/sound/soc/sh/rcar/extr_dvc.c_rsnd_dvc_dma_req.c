
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct dma_chan {int dummy; } ;


 struct dma_chan* rsnd_dma_request_channel (int ,struct rsnd_mod*,char*) ;
 int rsnd_dvc_of_node (struct rsnd_priv*) ;
 struct rsnd_priv* rsnd_mod_to_priv (struct rsnd_mod*) ;

__attribute__((used)) static struct dma_chan *rsnd_dvc_dma_req(struct rsnd_dai_stream *io,
      struct rsnd_mod *mod)
{
 struct rsnd_priv *priv = rsnd_mod_to_priv(mod);

 return rsnd_dma_request_channel(rsnd_dvc_of_node(priv),
     mod, "tx");
}
