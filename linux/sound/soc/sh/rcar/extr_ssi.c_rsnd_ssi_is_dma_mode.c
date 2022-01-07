
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_mod {int * ops; } ;


 int rsnd_ssi_dma_ops ;

__attribute__((used)) static int rsnd_ssi_is_dma_mode(struct rsnd_mod *mod)
{
 return mod->ops == &rsnd_ssi_dma_ops;
}
