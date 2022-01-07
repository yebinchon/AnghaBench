
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_gen {int * regs; } ;
struct device {int dummy; } ;
typedef enum rsnd_reg { ____Placeholder_rsnd_reg } rsnd_reg ;


 int dev_err (struct device*,char*,int) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;

__attribute__((used)) static int rsnd_is_accessible_reg(struct rsnd_priv *priv,
      struct rsnd_gen *gen, enum rsnd_reg reg)
{
 if (!gen->regs[reg]) {
  struct device *dev = rsnd_priv_to_dev(priv);

  dev_err(dev, "unsupported register access %x\n", reg);
  return 0;
 }

 return 1;
}
