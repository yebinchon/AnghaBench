
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_gen {int * res; } ;
typedef int phys_addr_t ;


 struct rsnd_gen* rsnd_priv_to_gen (struct rsnd_priv*) ;

phys_addr_t rsnd_gen_get_phy_addr(struct rsnd_priv *priv, int reg_id)
{
 struct rsnd_gen *gen = rsnd_priv_to_gen(priv);

 return gen->res[reg_id];
}
