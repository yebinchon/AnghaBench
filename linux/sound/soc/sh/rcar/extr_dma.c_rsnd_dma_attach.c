
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_mod {int type; } ;
struct rsnd_dai_stream {int dummy; } ;


 int rsnd_dai_connect (struct rsnd_mod*,struct rsnd_dai_stream*,int ) ;
 int rsnd_dma_alloc (struct rsnd_dai_stream*,struct rsnd_mod*,struct rsnd_mod**) ;

int rsnd_dma_attach(struct rsnd_dai_stream *io, struct rsnd_mod *mod,
      struct rsnd_mod **dma_mod)
{
 if (!(*dma_mod)) {
  int ret = rsnd_dma_alloc(io, mod, dma_mod);

  if (ret < 0)
   return ret;
 }

 return rsnd_dai_connect(*dma_mod, io, (*dma_mod)->type);
}
