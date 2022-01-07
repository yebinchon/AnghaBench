
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dmaen {int * chan; } ;
struct rsnd_dma {int mod_to; int mod_from; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;


 int EIO ;
 scalar_t__ IS_ERR_OR_NULL (int *) ;
 int dev_err (struct device*,char*) ;
 struct rsnd_dmaen* rsnd_dma_to_dmaen (struct rsnd_dma*) ;
 int * rsnd_dmaen_request_channel (struct rsnd_dai_stream*,int ,int ) ;
 struct rsnd_dma* rsnd_mod_to_dma (struct rsnd_mod*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;

__attribute__((used)) static int rsnd_dmaen_prepare(struct rsnd_mod *mod,
         struct rsnd_dai_stream *io,
         struct rsnd_priv *priv)
{
 struct rsnd_dma *dma = rsnd_mod_to_dma(mod);
 struct rsnd_dmaen *dmaen = rsnd_dma_to_dmaen(dma);
 struct device *dev = rsnd_priv_to_dev(priv);


 if (dmaen->chan)
  return 0;






 dmaen->chan = rsnd_dmaen_request_channel(io,
       dma->mod_from,
       dma->mod_to);
 if (IS_ERR_OR_NULL(dmaen->chan)) {
  dmaen->chan = ((void*)0);
  dev_err(dev, "can't get dma channel\n");
  return -EIO;
 }

 return 0;
}
