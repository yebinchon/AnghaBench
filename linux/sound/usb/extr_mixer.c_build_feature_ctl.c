
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_audio_term {int dummy; } ;
struct uac_feature_unit_descriptor {int dummy; } ;
struct mixer_build {int oterm; int map; int mixer; } ;


 int __build_feature_ctl (int ,int ,unsigned int,int,struct usb_audio_term*,int *,int,int,int) ;
 int uac_feature_unit_iFeature (struct uac_feature_unit_descriptor*) ;

__attribute__((used)) static void build_feature_ctl(struct mixer_build *state, void *raw_desc,
         unsigned int ctl_mask, int control,
         struct usb_audio_term *iterm, int unitid,
         int readonly_mask)
{
 struct uac_feature_unit_descriptor *desc = raw_desc;
 int nameid = uac_feature_unit_iFeature(desc);

 __build_feature_ctl(state->mixer, state->map, ctl_mask, control,
   iterm, &state->oterm, unitid, nameid, readonly_mask);
}
