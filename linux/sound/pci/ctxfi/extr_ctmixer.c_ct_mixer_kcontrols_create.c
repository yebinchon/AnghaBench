
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_9__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct ct_mixer {struct ct_atc* atc; } ;
struct ct_atc {int (* spdif_in_unmute ) (struct ct_atc*,int ) ;int (* mic_unmute ) (struct ct_atc*,int ) ;int (* line_in_unmute ) (struct ct_atc*,int ) ;int (* spdif_out_unmute ) (struct ct_atc*,int ) ;int (* line_rear_unmute ) (struct ct_atc*,int ) ;int (* line_clfe_unmute ) (struct ct_atc*,int ) ;int (* line_surround_unmute ) (struct ct_atc*,int ) ;int (* line_front_unmute ) (struct ct_atc*,int) ;struct capabilities (* capabilities ) (struct ct_atc*) ;} ;
struct capabilities {scalar_t__ dedicated_mic; scalar_t__ mic_source_switch; scalar_t__ output_switch; scalar_t__ digit_io_switch; } ;
typedef enum CTALSA_MIXER_CTL { ____Placeholder_CTALSA_MIXER_CTL } CTALSA_MIXER_CTL ;
struct TYPE_11__ {int name; scalar_t__ ctl; } ;
struct TYPE_10__ {unsigned long private_value; int name; } ;


 size_t MIXER_DIGITAL_IO_S ;
 int MIXER_LINEIN_C_S ;
 int MIXER_PCM_C_S ;
 int MIXER_SPDIFI_C_S ;
 int MIXER_SPDIFO_P_S ;
 int MIXER_WAVEC_P_S ;
 int MIXER_WAVEF_P_S ;
 int MIXER_WAVER_P_S ;
 int MIXER_WAVES_P_S ;
 int SWH_MIXER_END ;
 int SWH_MIXER_START ;
 int VOL_MIXER_END ;
 int VOL_MIXER_START ;
 TYPE_9__* ct_kcontrol_init_table ;
 int ct_mixer_kcontrol_new (struct ct_mixer*,TYPE_1__*) ;
 TYPE_1__ iec958_ctl ;
 TYPE_1__ iec958_default_ctl ;
 TYPE_1__ iec958_mask_ctl ;
 TYPE_1__ mic_source_ctl ;
 TYPE_1__ output_ctl ;
 int set_switch_state (struct ct_mixer*,int ,int) ;
 struct capabilities stub1 (struct ct_atc*) ;
 int stub2 (struct ct_atc*,int) ;
 int stub3 (struct ct_atc*,int ) ;
 int stub4 (struct ct_atc*,int ) ;
 int stub5 (struct ct_atc*,int ) ;
 int stub6 (struct ct_atc*,int ) ;
 int stub7 (struct ct_atc*,int ) ;
 int stub8 (struct ct_atc*,int ) ;
 int stub9 (struct ct_atc*,int ) ;
 TYPE_1__ swh_ctl ;
 TYPE_1__ vol_ctl ;

__attribute__((used)) static int ct_mixer_kcontrols_create(struct ct_mixer *mixer)
{
 enum CTALSA_MIXER_CTL type;
 struct ct_atc *atc = mixer->atc;
 struct capabilities cap = atc->capabilities(atc);
 int err;


 for (type = VOL_MIXER_START; type <= VOL_MIXER_END; type++) {
  if (ct_kcontrol_init_table[type].ctl) {
   vol_ctl.name = ct_kcontrol_init_table[type].name;
   vol_ctl.private_value = (unsigned long)type;
   err = ct_mixer_kcontrol_new(mixer, &vol_ctl);
   if (err)
    return err;
  }
 }

 ct_kcontrol_init_table[MIXER_DIGITAL_IO_S].ctl = cap.digit_io_switch;

 for (type = SWH_MIXER_START; type <= SWH_MIXER_END; type++) {
  if (ct_kcontrol_init_table[type].ctl) {
   swh_ctl.name = ct_kcontrol_init_table[type].name;
   swh_ctl.private_value = (unsigned long)type;
   err = ct_mixer_kcontrol_new(mixer, &swh_ctl);
   if (err)
    return err;
  }
 }

 err = ct_mixer_kcontrol_new(mixer, &iec958_mask_ctl);
 if (err)
  return err;

 err = ct_mixer_kcontrol_new(mixer, &iec958_default_ctl);
 if (err)
  return err;

 err = ct_mixer_kcontrol_new(mixer, &iec958_ctl);
 if (err)
  return err;

 if (cap.output_switch) {
  err = ct_mixer_kcontrol_new(mixer, &output_ctl);
  if (err)
   return err;
 }

 if (cap.mic_source_switch) {
  err = ct_mixer_kcontrol_new(mixer, &mic_source_ctl);
  if (err)
   return err;
 }
 atc->line_front_unmute(atc, 1);
 set_switch_state(mixer, MIXER_WAVEF_P_S, 1);
 atc->line_surround_unmute(atc, 0);
 set_switch_state(mixer, MIXER_WAVES_P_S, 0);
 atc->line_clfe_unmute(atc, 0);
 set_switch_state(mixer, MIXER_WAVEC_P_S, 0);
 atc->line_rear_unmute(atc, 0);
 set_switch_state(mixer, MIXER_WAVER_P_S, 0);
 atc->spdif_out_unmute(atc, 0);
 set_switch_state(mixer, MIXER_SPDIFO_P_S, 0);
 atc->line_in_unmute(atc, 0);
 if (cap.dedicated_mic)
  atc->mic_unmute(atc, 0);
 atc->spdif_in_unmute(atc, 0);
 set_switch_state(mixer, MIXER_PCM_C_S, 0);
 set_switch_state(mixer, MIXER_LINEIN_C_S, 0);
 set_switch_state(mixer, MIXER_SPDIFI_C_S, 0);

 return 0;
}
