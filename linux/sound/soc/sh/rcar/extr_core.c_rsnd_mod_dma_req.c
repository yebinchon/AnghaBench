
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsnd_mod {TYPE_1__* ops; } ;
struct rsnd_dai_stream {int dummy; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {struct dma_chan* (* dma_req ) (struct rsnd_dai_stream*,struct rsnd_mod*) ;} ;


 struct dma_chan* stub1 (struct rsnd_dai_stream*,struct rsnd_mod*) ;

struct dma_chan *rsnd_mod_dma_req(struct rsnd_dai_stream *io,
      struct rsnd_mod *mod)
{
 if (!mod || !mod->ops || !mod->ops->dma_req)
  return ((void*)0);

 return mod->ops->dma_req(io, mod);
}
