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
struct sta529 {int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int dummy; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FFX_CLK_DIS ; 
 int /*<<< orphan*/  FFX_CLK_ENB ; 
 int /*<<< orphan*/  FFX_CLK_MSK ; 
 int /*<<< orphan*/  FFX_MASK ; 
 int /*<<< orphan*/  FFX_OFF ; 
 int /*<<< orphan*/  POWER_CNTLMSAK ; 
 int /*<<< orphan*/  POWER_STDBY ; 
 int /*<<< orphan*/  POWER_UP ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  STA529_FFXCFG0 ; 
 int /*<<< orphan*/  STA529_MISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_soc_component*) ; 
 struct sta529* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component, enum
		snd_soc_bias_level level)
{
	struct sta529 *sta529 = FUNC2(component);

	switch (level) {
	case SND_SOC_BIAS_ON:
	case SND_SOC_BIAS_PREPARE:
		FUNC3(component, STA529_FFXCFG0, POWER_CNTLMSAK,
				POWER_UP);
		FUNC3(component, STA529_MISC,	FFX_CLK_MSK,
				FFX_CLK_ENB);
		break;
	case SND_SOC_BIAS_STANDBY:
		if (FUNC1(component) == SND_SOC_BIAS_OFF)
			FUNC0(sta529->regmap);
		FUNC3(component, STA529_FFXCFG0,
					POWER_CNTLMSAK, POWER_STDBY);
		/* Making FFX output to zero */
		FUNC3(component, STA529_FFXCFG0, FFX_MASK,
				FFX_OFF);
		FUNC3(component, STA529_MISC, FFX_CLK_MSK,
				FFX_CLK_DIS);
		break;
	case SND_SOC_BIAS_OFF:
		break;
	}

	return 0;

}