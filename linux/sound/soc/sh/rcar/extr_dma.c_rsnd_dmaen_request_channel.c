
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct dma_chan {int dummy; } ;


 struct dma_chan* rsnd_mod_dma_req (struct rsnd_dai_stream*,struct rsnd_mod*) ;

__attribute__((used)) static struct dma_chan *rsnd_dmaen_request_channel(struct rsnd_dai_stream *io,
         struct rsnd_mod *mod_from,
         struct rsnd_mod *mod_to)
{
 if ((!mod_from && !mod_to) ||
     (mod_from && mod_to))
  return ((void*)0);

 if (mod_from)
  return rsnd_mod_dma_req(io, mod_from);
 else
  return rsnd_mod_dma_req(io, mod_to);
}
