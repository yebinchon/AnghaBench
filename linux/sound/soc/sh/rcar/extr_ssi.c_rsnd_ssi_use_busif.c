
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_ssi {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int RSND_SSI_NO_BUSIF ;
 int rsnd_flags_has (struct rsnd_ssi*,int ) ;
 scalar_t__ rsnd_io_to_mod_src (struct rsnd_dai_stream*) ;
 struct rsnd_mod* rsnd_io_to_mod_ssi (struct rsnd_dai_stream*) ;
 struct rsnd_ssi* rsnd_mod_to_ssi (struct rsnd_mod*) ;
 int rsnd_ssi_is_dma_mode (struct rsnd_mod*) ;

int rsnd_ssi_use_busif(struct rsnd_dai_stream *io)
{
 struct rsnd_mod *mod = rsnd_io_to_mod_ssi(io);
 struct rsnd_ssi *ssi = rsnd_mod_to_ssi(mod);
 int use_busif = 0;

 if (!rsnd_ssi_is_dma_mode(mod))
  return 0;

 if (!(rsnd_flags_has(ssi, RSND_SSI_NO_BUSIF)))
  use_busif = 1;
 if (rsnd_io_to_mod_src(io))
  use_busif = 1;

 return use_busif;
}
