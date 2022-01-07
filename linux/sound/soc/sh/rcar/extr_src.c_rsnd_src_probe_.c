
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_src {int irq; int dma; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;


 int IRQF_SHARED ;
 int dev_name (struct device*) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct rsnd_mod*) ;
 int rsnd_dma_attach (struct rsnd_dai_stream*,struct rsnd_mod*,int *) ;
 struct rsnd_src* rsnd_mod_to_src (struct rsnd_mod*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;
 int rsnd_src_interrupt ;

__attribute__((used)) static int rsnd_src_probe_(struct rsnd_mod *mod,
      struct rsnd_dai_stream *io,
      struct rsnd_priv *priv)
{
 struct rsnd_src *src = rsnd_mod_to_src(mod);
 struct device *dev = rsnd_priv_to_dev(priv);
 int irq = src->irq;
 int ret;

 if (irq > 0) {





  ret = devm_request_irq(dev, irq,
           rsnd_src_interrupt,
           IRQF_SHARED,
           dev_name(dev), mod);
  if (ret)
   return ret;
 }

 ret = rsnd_dma_attach(io, mod, &src->dma);

 return ret;
}
