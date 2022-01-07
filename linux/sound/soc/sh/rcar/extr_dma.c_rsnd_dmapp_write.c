
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dma_ctrl {int dummy; } ;
struct rsnd_dma {int dummy; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,int ,int ) ;
 int iowrite32 (int ,int ) ;
 int rsnd_dmapp_addr (struct rsnd_dma_ctrl*,struct rsnd_dma*,int ) ;
 struct rsnd_mod* rsnd_mod_get (struct rsnd_dma*) ;
 struct rsnd_priv* rsnd_mod_to_priv (struct rsnd_mod*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;
 struct rsnd_dma_ctrl* rsnd_priv_to_dmac (struct rsnd_priv*) ;

__attribute__((used)) static void rsnd_dmapp_write(struct rsnd_dma *dma, u32 data, u32 reg)
{
 struct rsnd_mod *mod = rsnd_mod_get(dma);
 struct rsnd_priv *priv = rsnd_mod_to_priv(mod);
 struct rsnd_dma_ctrl *dmac = rsnd_priv_to_dmac(priv);
 struct device *dev = rsnd_priv_to_dev(priv);

 dev_dbg(dev, "w 0x%px : %08x\n", rsnd_dmapp_addr(dmac, dma, reg), data);

 iowrite32(data, rsnd_dmapp_addr(dmac, dma, reg));
}
