
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ct_mixer {int dummy; } ;
struct ct_atc {int (* spdif_out_unmute ) (struct ct_atc*,int) ;int (* line_rear_unmute ) (struct ct_atc*,int) ;int (* line_clfe_unmute ) (struct ct_atc*,int) ;int (* line_surround_unmute ) (struct ct_atc*,int) ;int (* line_front_unmute ) (struct ct_atc*,int) ;int (* spdif_in_unmute ) (struct ct_atc*,int) ;int (* mic_unmute ) (struct ct_atc*,int) ;int (* line_in_unmute ) (struct ct_atc*,int) ;struct capabilities (* capabilities ) (struct ct_atc*) ;struct ct_mixer* mixer; } ;
struct capabilities {scalar_t__ dedicated_mic; } ;
typedef enum CTALSA_MIXER_CTL { ____Placeholder_CTALSA_MIXER_CTL } CTALSA_MIXER_CTL ;


 int MIXER_DIGITAL_IO_S ;
 int MIXER_LINEIN_C_S ;
 int MIXER_MIC_C_S ;
 int MIXER_SPDIFI_C_S ;
 int MIXER_SPDIFO_P_S ;
 int MIXER_WAVEC_P_S ;
 int MIXER_WAVEF_P_S ;
 int MIXER_WAVER_P_S ;
 int MIXER_WAVES_P_S ;
 int SWH_CAPTURE_END ;
 int SWH_CAPTURE_START ;
 int ct_mixer_recording_select (struct ct_mixer*,int ) ;
 int ct_mixer_recording_unselect (struct ct_mixer*,int ) ;
 int do_digit_io_switch (struct ct_atc*,int) ;
 int do_line_mic_switch (struct ct_atc*,int) ;
 int get_amixer_index (int) ;
 struct capabilities stub1 (struct ct_atc*) ;
 int stub10 (struct ct_atc*,int) ;
 int stub2 (struct ct_atc*,int) ;
 int stub3 (struct ct_atc*,int) ;
 int stub4 (struct ct_atc*,int) ;
 int stub5 (struct ct_atc*,int) ;
 int stub6 (struct ct_atc*,int) ;
 int stub7 (struct ct_atc*,int) ;
 int stub8 (struct ct_atc*,int) ;
 int stub9 (struct ct_atc*,int) ;

__attribute__((used)) static void do_switch(struct ct_atc *atc, enum CTALSA_MIXER_CTL type, int state)
{
 struct ct_mixer *mixer = atc->mixer;
 struct capabilities cap = atc->capabilities(atc);


 if ((SWH_CAPTURE_START <= type) && (SWH_CAPTURE_END >= type)) {
  if (state) {
   ct_mixer_recording_select(mixer,
        get_amixer_index(type));
  } else {
   ct_mixer_recording_unselect(mixer,
          get_amixer_index(type));
  }
 }

 if (!cap.dedicated_mic &&
     (MIXER_LINEIN_C_S == type || MIXER_MIC_C_S == type)) {
  if (state)
   do_line_mic_switch(atc, type);
  atc->line_in_unmute(atc, state);
 } else if (cap.dedicated_mic && (MIXER_LINEIN_C_S == type))
  atc->line_in_unmute(atc, state);
 else if (cap.dedicated_mic && (MIXER_MIC_C_S == type))
  atc->mic_unmute(atc, state);
 else if (MIXER_SPDIFI_C_S == type)
  atc->spdif_in_unmute(atc, state);
 else if (MIXER_WAVEF_P_S == type)
  atc->line_front_unmute(atc, state);
 else if (MIXER_WAVES_P_S == type)
  atc->line_surround_unmute(atc, state);
 else if (MIXER_WAVEC_P_S == type)
  atc->line_clfe_unmute(atc, state);
 else if (MIXER_WAVER_P_S == type)
  atc->line_rear_unmute(atc, state);
 else if (MIXER_SPDIFO_P_S == type)
  atc->spdif_out_unmute(atc, state);
 else if (MIXER_DIGITAL_IO_S == type)
  do_digit_io_switch(atc, state);

 return;
}
