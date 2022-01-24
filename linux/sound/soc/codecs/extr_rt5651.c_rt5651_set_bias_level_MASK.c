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
struct snd_soc_component {int dummy; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  RT5651_D_MISC ; 
 int /*<<< orphan*/  RT5651_PLL_MODE_1 ; 
 int /*<<< orphan*/  RT5651_PWR_ANLG1 ; 
 int /*<<< orphan*/  RT5651_PWR_ANLG2 ; 
 int RT5651_PWR_BG ; 
 int /*<<< orphan*/  RT5651_PWR_DIG1 ; 
 int /*<<< orphan*/  RT5651_PWR_DIG2 ; 
 int RT5651_PWR_FV1 ; 
 int RT5651_PWR_FV2 ; 
 int RT5651_PWR_JD_M ; 
 int RT5651_PWR_LDO_DVO_MASK ; 
 int RT5651_PWR_MB ; 
 int /*<<< orphan*/  RT5651_PWR_MIXER ; 
 int RT5651_PWR_PLL ; 
 int /*<<< orphan*/  RT5651_PWR_VOL ; 
 int RT5651_PWR_VREF1 ; 
 int RT5651_PWR_VREF2 ; 
#define  SND_SOC_BIAS_OFF 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int FUNC0 (struct snd_soc_component*) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component,
			enum snd_soc_bias_level level)
{
	switch (level) {
	case SND_SOC_BIAS_PREPARE:
		if (SND_SOC_BIAS_STANDBY == FUNC0(component)) {
			if (FUNC1(component, RT5651_PLL_MODE_1) & 0x9200)
				FUNC2(component, RT5651_D_MISC,
						    0xc00, 0xc00);
		}
		break;
	case SND_SOC_BIAS_STANDBY:
		if (SND_SOC_BIAS_OFF == FUNC0(component)) {
			FUNC2(component, RT5651_PWR_ANLG1,
				RT5651_PWR_VREF1 | RT5651_PWR_MB |
				RT5651_PWR_BG | RT5651_PWR_VREF2,
				RT5651_PWR_VREF1 | RT5651_PWR_MB |
				RT5651_PWR_BG | RT5651_PWR_VREF2);
			FUNC4(10000, 15000);
			FUNC2(component, RT5651_PWR_ANLG1,
				RT5651_PWR_FV1 | RT5651_PWR_FV2,
				RT5651_PWR_FV1 | RT5651_PWR_FV2);
			FUNC2(component, RT5651_D_MISC, 0x1, 0x1);
		}
		break;

	case SND_SOC_BIAS_OFF:
		FUNC3(component, RT5651_D_MISC, 0x0010);
		FUNC3(component, RT5651_PWR_DIG1, 0x0000);
		FUNC3(component, RT5651_PWR_DIG2, 0x0000);
		FUNC3(component, RT5651_PWR_VOL, 0x0000);
		FUNC3(component, RT5651_PWR_MIXER, 0x0000);
		/* Do not touch the LDO voltage select bits on bias-off */
		FUNC2(component, RT5651_PWR_ANLG1,
			~RT5651_PWR_LDO_DVO_MASK, 0);
		/* Leave PLL1 and jack-detect power as is, all others off */
		FUNC2(component, RT5651_PWR_ANLG2,
				    ~(RT5651_PWR_PLL | RT5651_PWR_JD_M), 0);
		break;

	default:
		break;
	}

	return 0;
}