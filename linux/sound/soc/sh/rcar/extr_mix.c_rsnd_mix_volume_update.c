
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 int MIX_MDBER ;
 int rsnd_mix_volume_parameter (struct rsnd_dai_stream*,struct rsnd_mod*) ;
 int rsnd_mod_write (struct rsnd_mod*,int ,int) ;

__attribute__((used)) static void rsnd_mix_volume_update(struct rsnd_dai_stream *io,
      struct rsnd_mod *mod)
{

 rsnd_mod_write(mod, MIX_MDBER, 0);


 rsnd_mix_volume_parameter(io, mod);


 rsnd_mod_write(mod, MIX_MDBER, 1);
}
