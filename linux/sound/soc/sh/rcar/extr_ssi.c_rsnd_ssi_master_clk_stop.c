
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_ssi {int usrcnt; scalar_t__ chan; scalar_t__ rate; scalar_t__ cr_clk; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;


 int rsnd_adg_ssi_clk_stop (struct rsnd_mod*) ;
 struct rsnd_dai* rsnd_io_to_rdai (struct rsnd_dai_stream*) ;
 struct rsnd_ssi* rsnd_mod_to_ssi (struct rsnd_mod*) ;
 int rsnd_rdai_is_clk_master (struct rsnd_dai*) ;
 int rsnd_ssi_can_output_clk (struct rsnd_mod*) ;

__attribute__((used)) static void rsnd_ssi_master_clk_stop(struct rsnd_mod *mod,
         struct rsnd_dai_stream *io)
{
 struct rsnd_dai *rdai = rsnd_io_to_rdai(io);
 struct rsnd_ssi *ssi = rsnd_mod_to_ssi(mod);

 if (!rsnd_rdai_is_clk_master(rdai))
  return;

 if (!rsnd_ssi_can_output_clk(mod))
  return;

 if (ssi->usrcnt > 1)
  return;

 ssi->cr_clk = 0;
 ssi->rate = 0;
 ssi->chan = 0;

 rsnd_adg_ssi_clk_stop(mod);
}
