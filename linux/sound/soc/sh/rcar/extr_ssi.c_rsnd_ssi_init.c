
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_ssi {int usrcnt; } ;
struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int rsnd_mod_power_on (struct rsnd_mod*) ;
 struct rsnd_ssi* rsnd_mod_to_ssi (struct rsnd_mod*) ;
 int rsnd_ssi_config_init (struct rsnd_mod*,struct rsnd_dai_stream*) ;
 int rsnd_ssi_is_run_mods (struct rsnd_mod*,struct rsnd_dai_stream*) ;
 int rsnd_ssi_register_setup (struct rsnd_mod*) ;
 int rsnd_ssi_status_clear (struct rsnd_mod*) ;

__attribute__((used)) static int rsnd_ssi_init(struct rsnd_mod *mod,
    struct rsnd_dai_stream *io,
    struct rsnd_priv *priv)
{
 struct rsnd_ssi *ssi = rsnd_mod_to_ssi(mod);

 if (!rsnd_ssi_is_run_mods(mod, io))
  return 0;

 ssi->usrcnt++;

 rsnd_mod_power_on(mod);

 rsnd_ssi_config_init(mod, io);

 rsnd_ssi_register_setup(mod);


 rsnd_ssi_status_clear(mod);

 return 0;
}
