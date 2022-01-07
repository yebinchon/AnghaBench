
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dma {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int EIO ;
 int PDMACHCR ;
 int PDMACHCR_DE ;
 int rsnd_dmapp_bset (struct rsnd_dma*,int ,int,int ) ;
 int rsnd_dmapp_read (struct rsnd_dma*,int ) ;
 struct rsnd_dma* rsnd_mod_to_dma (struct rsnd_mod*) ;
 int udelay (int) ;

__attribute__((used)) static int rsnd_dmapp_stop(struct rsnd_mod *mod,
      struct rsnd_dai_stream *io,
      struct rsnd_priv *priv)
{
 struct rsnd_dma *dma = rsnd_mod_to_dma(mod);
 int i;

 rsnd_dmapp_bset(dma, 0, PDMACHCR_DE, PDMACHCR);

 for (i = 0; i < 1024; i++) {
  if (0 == (rsnd_dmapp_read(dma, PDMACHCR) & PDMACHCR_DE))
   return 0;
  udelay(1);
 }

 return -EIO;
}
