
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dvc {int ren; } ;
struct rsnd_dai_stream {int dummy; } ;


 int DVC_ADINR ;
 int DVC_DVUCR ;
 int DVC_DVUIR ;
 int DVC_VRCTR ;
 int DVC_VRDBR ;
 int DVC_VRPDR ;
 int rsnd_dvc_get_vrdbr (struct rsnd_dvc*) ;
 int rsnd_dvc_get_vrpdr (struct rsnd_dvc*) ;
 int rsnd_dvc_volume_parameter (struct rsnd_dai_stream*,struct rsnd_mod*) ;
 int rsnd_get_adinr_bit (struct rsnd_mod*,struct rsnd_dai_stream*) ;
 scalar_t__ rsnd_kctrl_vals (int ) ;
 struct rsnd_dvc* rsnd_mod_to_dvc (struct rsnd_mod*) ;
 int rsnd_mod_write (struct rsnd_mod*,int ,int) ;
 int rsnd_runtime_channel_after_ctu (struct rsnd_dai_stream*) ;

__attribute__((used)) static void rsnd_dvc_volume_init(struct rsnd_dai_stream *io,
     struct rsnd_mod *mod)
{
 struct rsnd_dvc *dvc = rsnd_mod_to_dvc(mod);
 u32 adinr = 0;
 u32 dvucr = 0;
 u32 vrctr = 0;
 u32 vrpdr = 0;
 u32 vrdbr = 0;

 adinr = rsnd_get_adinr_bit(mod, io) |
  rsnd_runtime_channel_after_ctu(io);


 dvucr |= 0x101;


 if (rsnd_kctrl_vals(dvc->ren)) {
  dvucr |= 0x10;







  vrctr = 0xff;
  vrpdr = rsnd_dvc_get_vrpdr(dvc);
  vrdbr = rsnd_dvc_get_vrdbr(dvc);
 }


 rsnd_mod_write(mod, DVC_DVUIR, 1);


 rsnd_mod_write(mod, DVC_ADINR, adinr);
 rsnd_mod_write(mod, DVC_DVUCR, dvucr);


 rsnd_mod_write(mod, DVC_VRCTR, vrctr);
 rsnd_mod_write(mod, DVC_VRPDR, vrpdr);
 rsnd_mod_write(mod, DVC_VRDBR, vrdbr);


 rsnd_dvc_volume_parameter(io, mod);


 rsnd_mod_write(mod, DVC_DVUIR, 0);
}
