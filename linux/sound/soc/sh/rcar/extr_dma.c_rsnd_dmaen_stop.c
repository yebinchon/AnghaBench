
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dmaen {scalar_t__ chan; } ;
struct rsnd_dma {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int dmaengine_terminate_all (scalar_t__) ;
 struct rsnd_dmaen* rsnd_dma_to_dmaen (struct rsnd_dma*) ;
 struct rsnd_dma* rsnd_mod_to_dma (struct rsnd_mod*) ;

__attribute__((used)) static int rsnd_dmaen_stop(struct rsnd_mod *mod,
      struct rsnd_dai_stream *io,
      struct rsnd_priv *priv)
{
 struct rsnd_dma *dma = rsnd_mod_to_dma(mod);
 struct rsnd_dmaen *dmaen = rsnd_dma_to_dmaen(dma);

 if (dmaen->chan)
  dmaengine_terminate_all(dmaen->chan);

 return 0;
}
