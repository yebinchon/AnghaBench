
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dmapp {int chcr; int dmapp_id; } ;
struct rsnd_dma_ctrl {int dmapp_num; } ;
struct rsnd_dma {int dst_addr; int src_addr; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;


 int PDMACHCR_DE ;
 int dev_dbg (struct device*,char*,int ,int *,int *,int) ;
 struct rsnd_dmapp* rsnd_dma_to_dmapp (struct rsnd_dma*) ;
 int rsnd_dmapp_get_chcr (struct rsnd_dai_stream*,struct rsnd_mod*,struct rsnd_mod*) ;
 struct rsnd_priv* rsnd_io_to_priv (struct rsnd_dai_stream*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;
 struct rsnd_dma_ctrl* rsnd_priv_to_dmac (struct rsnd_priv*) ;

__attribute__((used)) static int rsnd_dmapp_attach(struct rsnd_dai_stream *io,
        struct rsnd_dma *dma,
        struct rsnd_mod *mod_from, struct rsnd_mod *mod_to)
{
 struct rsnd_dmapp *dmapp = rsnd_dma_to_dmapp(dma);
 struct rsnd_priv *priv = rsnd_io_to_priv(io);
 struct rsnd_dma_ctrl *dmac = rsnd_priv_to_dmac(priv);
 struct device *dev = rsnd_priv_to_dev(priv);

 dmapp->dmapp_id = dmac->dmapp_num;
 dmapp->chcr = rsnd_dmapp_get_chcr(io, mod_from, mod_to) | PDMACHCR_DE;

 dmac->dmapp_num++;

 dev_dbg(dev, "id/src/dst/chcr = %d/%pad/%pad/%08x\n",
  dmapp->dmapp_id, &dma->src_addr, &dma->dst_addr, dmapp->chcr);

 return 0;
}
