#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ct_mixer {int dummy; } ;
struct ct_atc {int /*<<< orphan*/  (* spdif_out_unmute ) (struct ct_atc*,int) ;int /*<<< orphan*/  (* line_rear_unmute ) (struct ct_atc*,int) ;int /*<<< orphan*/  (* line_clfe_unmute ) (struct ct_atc*,int) ;int /*<<< orphan*/  (* line_surround_unmute ) (struct ct_atc*,int) ;int /*<<< orphan*/  (* line_front_unmute ) (struct ct_atc*,int) ;int /*<<< orphan*/  (* spdif_in_unmute ) (struct ct_atc*,int) ;int /*<<< orphan*/  (* mic_unmute ) (struct ct_atc*,int) ;int /*<<< orphan*/  (* line_in_unmute ) (struct ct_atc*,int) ;struct capabilities (* capabilities ) (struct ct_atc*) ;struct ct_mixer* mixer; } ;
struct capabilities {scalar_t__ dedicated_mic; } ;
typedef  enum CTALSA_MIXER_CTL { ____Placeholder_CTALSA_MIXER_CTL } CTALSA_MIXER_CTL ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC0 (struct ct_mixer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ct_mixer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ct_atc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ct_atc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct capabilities FUNC5 (struct ct_atc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ct_atc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ct_atc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ct_atc*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ct_atc*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ct_atc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ct_atc*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ct_atc*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ct_atc*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ct_atc*,int) ; 

__attribute__((used)) static void FUNC15(struct ct_atc *atc, enum CTALSA_MIXER_CTL type, int state)
{
	struct ct_mixer *mixer = atc->mixer;
	struct capabilities cap = atc->capabilities(atc);

	/* Do changes in mixer. */
	if ((SWH_CAPTURE_START <= type) && (SWH_CAPTURE_END >= type)) {
		if (state) {
			FUNC0(mixer,
						  FUNC4(type));
		} else {
			FUNC1(mixer,
						    FUNC4(type));
		}
	}
	/* Do changes out of mixer. */
	if (!cap.dedicated_mic &&
	    (MIXER_LINEIN_C_S == type || MIXER_MIC_C_S == type)) {
		if (state)
			FUNC3(atc, type);
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
		FUNC2(atc, state);

	return;
}