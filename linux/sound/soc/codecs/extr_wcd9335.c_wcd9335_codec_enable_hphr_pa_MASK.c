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
struct wcd9335_codec {int hph_mode; } ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
#define  SND_SOC_DAPM_POST_PMD 131 
#define  SND_SOC_DAPM_POST_PMU 130 
#define  SND_SOC_DAPM_PRE_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  WCD9335_CDC_RX2_RX_PATH_CTL ; 
 int /*<<< orphan*/  WCD9335_CDC_RX2_RX_PATH_MIX_CTL ; 
 int /*<<< orphan*/  WCD9335_CDC_RX_PGA_MUTE_DISABLE ; 
 int /*<<< orphan*/  WCD9335_CDC_RX_PGA_MUTE_EN_MASK ; 
 struct wcd9335_codec* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wcd9335_codec*,int,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
					struct snd_kcontrol *kc, int event)
{
	struct snd_soc_component *comp = FUNC2(w->dapm);
	struct wcd9335_codec *wcd = FUNC0(comp->dev);
	int hph_mode = wcd->hph_mode;

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		break;
	case SND_SOC_DAPM_POST_PMU:
		/*
		 * 7ms sleep is required after PA is enabled as per
		 * HW requirement
		 */
		FUNC3(7000, 7100);
		FUNC4(wcd, hph_mode, event);
		FUNC1(comp,
					WCD9335_CDC_RX2_RX_PATH_CTL,
					WCD9335_CDC_RX_PGA_MUTE_EN_MASK,
					WCD9335_CDC_RX_PGA_MUTE_DISABLE);
		/* Remove mix path mute if it is enabled */
		if ((FUNC0(comp,
					WCD9335_CDC_RX2_RX_PATH_MIX_CTL)) &
					WCD9335_CDC_RX_PGA_MUTE_EN_MASK)
			FUNC1(comp,
					WCD9335_CDC_RX2_RX_PATH_MIX_CTL,
					WCD9335_CDC_RX_PGA_MUTE_EN_MASK,
					WCD9335_CDC_RX_PGA_MUTE_DISABLE);

		break;

	case SND_SOC_DAPM_PRE_PMD:
		FUNC4(wcd, hph_mode, event);
		break;
	case SND_SOC_DAPM_POST_PMD:
		/* 5ms sleep is required after PA is disabled as per
		 * HW requirement
		 */
		FUNC3(5000, 5500);
		break;
	};

	return 0;
}