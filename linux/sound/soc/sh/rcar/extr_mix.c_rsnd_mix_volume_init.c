
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_mod {int dummy; } ;
struct rsnd_mix {int rdw; int rup; int ren; } ;
struct rsnd_dai_stream {int dummy; } ;


 int MIX_ADINR ;
 int MIX_MIXIR ;
 int MIX_MIXMR ;
 int MIX_MVPDR ;
 int rsnd_kctrl_vals (int ) ;
 int rsnd_mix_volume_parameter (struct rsnd_dai_stream*,struct rsnd_mod*) ;
 struct rsnd_mix* rsnd_mod_to_mix (struct rsnd_mod*) ;
 int rsnd_mod_write (struct rsnd_mod*,int ,int) ;
 int rsnd_runtime_channel_after_ctu (struct rsnd_dai_stream*) ;

__attribute__((used)) static void rsnd_mix_volume_init(struct rsnd_dai_stream *io,
     struct rsnd_mod *mod)
{
 struct rsnd_mix *mix = rsnd_mod_to_mix(mod);

 rsnd_mod_write(mod, MIX_MIXIR, 1);


 rsnd_mod_write(mod, MIX_ADINR, rsnd_runtime_channel_after_ctu(io));


 rsnd_mod_write(mod, MIX_MIXMR, rsnd_kctrl_vals(mix->ren));
 rsnd_mod_write(mod, MIX_MVPDR, rsnd_kctrl_vals(mix->rup) << 8 |
           rsnd_kctrl_vals(mix->rdw));


 rsnd_mix_volume_parameter(io, mod);

 rsnd_mod_write(mod, MIX_MIXIR, 0);
}
