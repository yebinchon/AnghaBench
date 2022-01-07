
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_ssi {int cr_own; int cr_clk; scalar_t__ cr_en; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int DIRQ ;
 int EN ;
 int IIRQ ;
 int SSICR ;
 scalar_t__ rsnd_io_is_play (struct rsnd_dai_stream*) ;
 struct rsnd_ssi* rsnd_mod_to_ssi (struct rsnd_mod*) ;
 int rsnd_mod_write (struct rsnd_mod*,int ,int) ;
 scalar_t__ rsnd_ssi_is_parent (struct rsnd_mod*,struct rsnd_dai_stream*) ;
 int rsnd_ssi_is_run_mods (struct rsnd_mod*,struct rsnd_dai_stream*) ;
 int rsnd_ssi_status_check (struct rsnd_mod*,int ) ;

__attribute__((used)) static int rsnd_ssi_stop(struct rsnd_mod *mod,
    struct rsnd_dai_stream *io,
    struct rsnd_priv *priv)
{
 struct rsnd_ssi *ssi = rsnd_mod_to_ssi(mod);
 u32 cr;

 if (!rsnd_ssi_is_run_mods(mod, io))
  return 0;

 if (rsnd_ssi_is_parent(mod, io))
  return 0;

 cr = ssi->cr_own |
  ssi->cr_clk;






 if (rsnd_io_is_play(io)) {
  rsnd_mod_write(mod, SSICR, cr | EN);
  rsnd_ssi_status_check(mod, DIRQ);
 }





 rsnd_mod_write(mod, SSICR, cr);
 rsnd_ssi_status_check(mod, IIRQ);

 ssi->cr_en = 0;

 return 0;
}
