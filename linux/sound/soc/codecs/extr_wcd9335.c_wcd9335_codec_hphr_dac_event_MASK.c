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
typedef  int u8 ;
struct wcd9335_codec {int hph_mode; int /*<<< orphan*/  clsh_ctrl; } ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int CLS_H_HIFI ; 
 int CLS_H_LOHIFI ; 
 int CLS_H_LP ; 
 int EINVAL ; 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  WCD9335_CDC_RX2_RX_PATH_SEC0 ; 
 int WCD9335_CDC_RX_PATH_DEM_INP_SEL_MASK ; 
 int /*<<< orphan*/  WCD_CLSH_EVENT_POST_PA ; 
 int /*<<< orphan*/  WCD_CLSH_EVENT_PRE_DAC ; 
 int WCD_CLSH_STATE_HPHL ; 
 int /*<<< orphan*/  WCD_CLSH_STATE_HPHR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct wcd9335_codec* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_dapm_widget *w,
				      struct snd_kcontrol *kc,
				      int event)
{
	struct snd_soc_component *comp = FUNC3(w->dapm);
	struct wcd9335_codec *wcd = FUNC1(comp->dev);
	int hph_mode = wcd->hph_mode;
	u8 dem_inp;

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:

		/* Read DEM INP Select */
		dem_inp = FUNC2(comp,
				WCD9335_CDC_RX2_RX_PATH_SEC0) &
				WCD9335_CDC_RX_PATH_DEM_INP_SEL_MASK;
		if (((hph_mode == CLS_H_HIFI) || (hph_mode == CLS_H_LOHIFI) ||
		     (hph_mode == CLS_H_LP)) && (dem_inp != 0x01)) {
			FUNC0(comp->dev, "DEM Input not set correctly, hph_mode: %d\n",
				hph_mode);
			return -EINVAL;
		}

		FUNC7(wcd->clsh_ctrl,
			     WCD_CLSH_EVENT_PRE_DAC,
			     WCD_CLSH_STATE_HPHR,
			     ((hph_mode == CLS_H_LOHIFI) ?
			       CLS_H_HIFI : hph_mode));

		FUNC5(comp, event, hph_mode);

		break;
	case SND_SOC_DAPM_POST_PMD:
		/* 1000us required as per HW requirement */
		FUNC4(1000, 1100);

		if (!(FUNC6(wcd->clsh_ctrl) &
					WCD_CLSH_STATE_HPHL))
			FUNC5(comp, event, hph_mode);

		FUNC7(wcd->clsh_ctrl, WCD_CLSH_EVENT_POST_PA,
			     WCD_CLSH_STATE_HPHR, ((hph_mode == CLS_H_LOHIFI) ?
						CLS_H_HIFI : hph_mode));
		break;
	};

	return 0;
}