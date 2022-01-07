
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dmapp {int chcr; } ;
struct rsnd_dma {int dst_addr; int src_addr; } ;
struct rsnd_dai_stream {int dummy; } ;


 int PDMACHCR ;
 int PDMADAR ;
 int PDMASAR ;
 struct rsnd_dmapp* rsnd_dma_to_dmapp (struct rsnd_dma*) ;
 int rsnd_dmapp_write (struct rsnd_dma*,int ,int ) ;
 struct rsnd_dma* rsnd_mod_to_dma (struct rsnd_mod*) ;

__attribute__((used)) static int rsnd_dmapp_start(struct rsnd_mod *mod,
       struct rsnd_dai_stream *io,
       struct rsnd_priv *priv)
{
 struct rsnd_dma *dma = rsnd_mod_to_dma(mod);
 struct rsnd_dmapp *dmapp = rsnd_dma_to_dmapp(dma);

 rsnd_dmapp_write(dma, dma->src_addr, PDMASAR);
 rsnd_dmapp_write(dma, dma->dst_addr, PDMADAR);
 rsnd_dmapp_write(dma, dmapp->chcr, PDMACHCR);

 return 0;
}
