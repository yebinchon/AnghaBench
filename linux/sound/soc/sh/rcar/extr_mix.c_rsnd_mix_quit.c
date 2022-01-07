
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int rsnd_mix_halt (struct rsnd_mod*) ;
 int rsnd_mod_power_off (struct rsnd_mod*) ;

__attribute__((used)) static int rsnd_mix_quit(struct rsnd_mod *mod,
    struct rsnd_dai_stream *io,
    struct rsnd_priv *priv)
{
 rsnd_mix_halt(mod);

 rsnd_mod_power_off(mod);

 return 0;
}
