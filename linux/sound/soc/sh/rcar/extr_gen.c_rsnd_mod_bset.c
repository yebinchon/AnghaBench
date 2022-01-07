
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_gen {int * regs; } ;
struct device {int dummy; } ;
typedef enum rsnd_reg { ____Placeholder_rsnd_reg } rsnd_reg ;


 int dev_dbg (struct device*,char*,int ,int ,int,int ,int ) ;
 int regmap_fields_force_update_bits (int ,int ,int ,int ) ;
 int rsnd_is_accessible_reg (struct rsnd_priv*,struct rsnd_gen*,int) ;
 int rsnd_mod_id_cmd (struct rsnd_mod*) ;
 int rsnd_mod_name (struct rsnd_mod*) ;
 struct rsnd_priv* rsnd_mod_to_priv (struct rsnd_mod*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;
 struct rsnd_gen* rsnd_priv_to_gen (struct rsnd_priv*) ;
 int rsnd_reg_name (struct rsnd_gen*,int) ;

void rsnd_mod_bset(struct rsnd_mod *mod,
     enum rsnd_reg reg, u32 mask, u32 data)
{
 struct rsnd_priv *priv = rsnd_mod_to_priv(mod);
 struct device *dev = rsnd_priv_to_dev(priv);
 struct rsnd_gen *gen = rsnd_priv_to_gen(priv);

 if (!rsnd_is_accessible_reg(priv, gen, reg))
  return;

 regmap_fields_force_update_bits(gen->regs[reg],
     rsnd_mod_id_cmd(mod), mask, data);

 dev_dbg(dev, "b %s - %-18s (%4d) : %08x/%08x\n",
  rsnd_mod_name(mod),
  rsnd_reg_name(gen, reg), reg, data, mask);

}
