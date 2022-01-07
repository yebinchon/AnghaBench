
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dma_ctrl {int dmaen_num; } ;
struct rsnd_dma {int dummy; } ;
struct rsnd_dai_stream {int dmac_dev; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int dev; } ;


 int EAGAIN ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR_OR_NULL (struct dma_chan*) ;
 int PTR_ERR (struct dma_chan*) ;
 int dma_release_channel (struct dma_chan*) ;
 struct dma_chan* rsnd_dmaen_request_channel (struct rsnd_dai_stream*,struct rsnd_mod*,struct rsnd_mod*) ;
 struct rsnd_priv* rsnd_io_to_priv (struct rsnd_dai_stream*) ;
 struct rsnd_dma_ctrl* rsnd_priv_to_dmac (struct rsnd_priv*) ;

__attribute__((used)) static int rsnd_dmaen_attach(struct rsnd_dai_stream *io,
      struct rsnd_dma *dma,
      struct rsnd_mod *mod_from, struct rsnd_mod *mod_to)
{
 struct rsnd_priv *priv = rsnd_io_to_priv(io);
 struct rsnd_dma_ctrl *dmac = rsnd_priv_to_dmac(priv);
 struct dma_chan *chan;


 chan = rsnd_dmaen_request_channel(io, mod_from, mod_to);
 if (IS_ERR_OR_NULL(chan)) {

  if (PTR_ERR(chan) == -EPROBE_DEFER)
   return PTR_ERR(chan);







  return -EAGAIN;
 }






 io->dmac_dev = chan->device->dev;

 dma_release_channel(chan);

 dmac->dmaen_num++;

 return 0;
}
