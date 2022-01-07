
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dvc {int ren; int mute; } ;
struct rsnd_dai_stream {int dummy; } ;


 int DVC_DVUER ;
 int DVC_VRDBR ;
 int DVC_VRPDR ;
 int DVC_ZCMCR ;
 int rsnd_dvc_get_vrdbr (struct rsnd_dvc*) ;
 int rsnd_dvc_get_vrpdr (struct rsnd_dvc*) ;
 int rsnd_dvc_volume_parameter (struct rsnd_dai_stream*,struct rsnd_mod*) ;
 int rsnd_kctrl_size (int ) ;
 int rsnd_kctrl_valm (int ,int) ;
 scalar_t__ rsnd_kctrl_vals (int ) ;
 struct rsnd_dvc* rsnd_mod_to_dvc (struct rsnd_mod*) ;
 int rsnd_mod_write (struct rsnd_mod*,int ,int) ;

__attribute__((used)) static void rsnd_dvc_volume_update(struct rsnd_dai_stream *io,
       struct rsnd_mod *mod)
{
 struct rsnd_dvc *dvc = rsnd_mod_to_dvc(mod);
 u32 zcmcr = 0;
 u32 vrpdr = 0;
 u32 vrdbr = 0;
 int i;

 for (i = 0; i < rsnd_kctrl_size(dvc->mute); i++)
  zcmcr |= (!!rsnd_kctrl_valm(dvc->mute, i)) << i;

 if (rsnd_kctrl_vals(dvc->ren)) {
  vrpdr = rsnd_dvc_get_vrpdr(dvc);
  vrdbr = rsnd_dvc_get_vrdbr(dvc);
 }


 rsnd_mod_write(mod, DVC_DVUER, 0);


 rsnd_mod_write(mod, DVC_ZCMCR, zcmcr);


 rsnd_mod_write(mod, DVC_VRPDR, vrpdr);
 rsnd_mod_write(mod, DVC_VRDBR, vrdbr);



 rsnd_dvc_volume_parameter(io, mod);


 rsnd_mod_write(mod, DVC_DVUER, 1);
}
