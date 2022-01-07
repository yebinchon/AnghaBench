
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_ssi {int irq; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int RSND_SSI_PROBED ;
 int free_irq (int ,struct rsnd_mod*) ;
 int rsnd_flags_del (struct rsnd_ssi*,int ) ;
 scalar_t__ rsnd_flags_has (struct rsnd_ssi*,int ) ;
 struct rsnd_mod* rsnd_io_to_mod_ssi (struct rsnd_dai_stream*) ;
 struct rsnd_ssi* rsnd_mod_to_ssi (struct rsnd_mod*) ;

__attribute__((used)) static int rsnd_ssi_common_remove(struct rsnd_mod *mod,
      struct rsnd_dai_stream *io,
      struct rsnd_priv *priv)
{
 struct rsnd_ssi *ssi = rsnd_mod_to_ssi(mod);
 struct rsnd_mod *pure_ssi_mod = rsnd_io_to_mod_ssi(io);


 if (pure_ssi_mod != mod)
  return 0;


 if (rsnd_flags_has(ssi, RSND_SSI_PROBED)) {
  free_irq(ssi->irq, mod);

  rsnd_flags_del(ssi, RSND_SSI_PROBED);
 }

 return 0;
}
