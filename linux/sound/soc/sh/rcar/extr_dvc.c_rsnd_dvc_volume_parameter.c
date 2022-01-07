
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dvc {int volume; int ren; } ;
struct rsnd_dai_stream {int dummy; } ;


 int DVC_VOLxR (int) ;
 int RSND_MAX_CHANNELS ;
 int rsnd_kctrl_max (int ) ;
 int rsnd_kctrl_valm (int ,int) ;
 scalar_t__ rsnd_kctrl_vals (int ) ;
 struct rsnd_dvc* rsnd_mod_to_dvc (struct rsnd_mod*) ;
 int rsnd_mod_write (struct rsnd_mod*,int ,int ) ;

__attribute__((used)) static void rsnd_dvc_volume_parameter(struct rsnd_dai_stream *io,
           struct rsnd_mod *mod)
{
 struct rsnd_dvc *dvc = rsnd_mod_to_dvc(mod);
 u32 val[RSND_MAX_CHANNELS];
 int i;


 if (rsnd_kctrl_vals(dvc->ren))
  for (i = 0; i < RSND_MAX_CHANNELS; i++)
   val[i] = rsnd_kctrl_max(dvc->volume);
 else
  for (i = 0; i < RSND_MAX_CHANNELS; i++)
   val[i] = rsnd_kctrl_valm(dvc->volume, i);


 for (i = 0; i < RSND_MAX_CHANNELS; i++)
  rsnd_mod_write(mod, DVC_VOLxR(i), val[i]);
}
