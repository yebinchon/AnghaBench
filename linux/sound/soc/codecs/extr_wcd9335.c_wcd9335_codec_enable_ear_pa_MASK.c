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
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_POST_PMU 128 
 int /*<<< orphan*/  WCD9335_CDC_RX0_RX_PATH_CTL ; 
 int /*<<< orphan*/  WCD9335_CDC_RX0_RX_PATH_MIX_CTL ; 
 int /*<<< orphan*/  WCD9335_CDC_RX_PGA_MUTE_DISABLE ; 
 int /*<<< orphan*/  WCD9335_CDC_RX_PGA_MUTE_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *w,
				       struct snd_kcontrol *kc, int event)
{
	struct snd_soc_component *comp = FUNC1(w->dapm);

	switch (event) {
	case SND_SOC_DAPM_POST_PMU:
		/* 5ms sleep is required after PA is enabled as per
		 * HW requirement
		 */
		FUNC2(5000, 5500);
		FUNC0(comp,
					WCD9335_CDC_RX0_RX_PATH_CTL,
					WCD9335_CDC_RX_PGA_MUTE_EN_MASK,
					WCD9335_CDC_RX_PGA_MUTE_DISABLE);
		/* Remove mix path mute if it is enabled */
		if ((FUNC0(comp,
					WCD9335_CDC_RX0_RX_PATH_MIX_CTL)) &
					WCD9335_CDC_RX_PGA_MUTE_EN_MASK)
			FUNC0(comp,
					WCD9335_CDC_RX0_RX_PATH_MIX_CTL,
					WCD9335_CDC_RX_PGA_MUTE_EN_MASK,
					WCD9335_CDC_RX_PGA_MUTE_DISABLE);
		break;
	case SND_SOC_DAPM_POST_PMD:
		/* 5ms sleep is required after PA is disabled as per
		 * HW requirement
		 */
		FUNC2(5000, 5500);

		break;
	};

	return 0;
}