
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {struct rsnd_dma_ctrl* dma; } ;
struct rsnd_dma_ctrl {int base; scalar_t__ dmapp_num; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct rsnd_dma_ctrl* devm_kzalloc (struct device*,int,int ) ;
 int mem ;
 int mem_ops ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 scalar_t__ rsnd_is_gen1 (struct rsnd_priv*) ;
 int rsnd_mod_init (int *,int *,int *,int *,int ,int ) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;
 struct platform_device* rsnd_priv_to_pdev (struct rsnd_priv*) ;

int rsnd_dma_probe(struct rsnd_priv *priv)
{
 struct platform_device *pdev = rsnd_priv_to_pdev(priv);
 struct device *dev = rsnd_priv_to_dev(priv);
 struct rsnd_dma_ctrl *dmac;
 struct resource *res;




 if (rsnd_is_gen1(priv))
  return 0;




 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "audmapp");
 dmac = devm_kzalloc(dev, sizeof(*dmac), GFP_KERNEL);
 if (!dmac || !res) {
  dev_err(dev, "dma allocate failed\n");
  return 0;
 }

 dmac->dmapp_num = 0;
 dmac->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(dmac->base))
  return PTR_ERR(dmac->base);

 priv->dma = dmac;


 return rsnd_mod_init(((void*)0), &mem, &mem_ops, ((void*)0), 0, 0);
}
