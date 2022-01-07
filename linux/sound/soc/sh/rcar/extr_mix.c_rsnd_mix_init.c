
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int rsnd_mix_activation (struct rsnd_mod*) ;
 int rsnd_mix_volume_init (struct rsnd_dai_stream*,struct rsnd_mod*) ;
 int rsnd_mix_volume_update (struct rsnd_dai_stream*,struct rsnd_mod*) ;
 int rsnd_mod_power_on (struct rsnd_mod*) ;

__attribute__((used)) static int rsnd_mix_init(struct rsnd_mod *mod,
    struct rsnd_dai_stream *io,
    struct rsnd_priv *priv)
{
 rsnd_mod_power_on(mod);

 rsnd_mix_activation(mod);

 rsnd_mix_volume_init(io, mod);

 rsnd_mix_volume_update(io, mod);

 return 0;
}
