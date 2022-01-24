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
 int /*<<< orphan*/  AC_PWRST_D0 ; 
 int /*<<< orphan*/  AC_PWRST_D3 ; 
 int /*<<< orphan*/  RT286_DC_GAIN ; 
 int /*<<< orphan*/  RT286_SET_AUDIO_POWER ; 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	switch (level) {
	case SND_SOC_BIAS_PREPARE:
		if (SND_SOC_BIAS_STANDBY == FUNC1(component)) {
			FUNC3(component,
				RT286_SET_AUDIO_POWER, AC_PWRST_D0);
			FUNC2(component,
				RT286_DC_GAIN, 0x200, 0x200);
		}
		break;

	case SND_SOC_BIAS_ON:
		FUNC0(10);
		FUNC2(component,
			RT286_DC_GAIN, 0x200, 0x0);

		break;

	case SND_SOC_BIAS_STANDBY:
		FUNC3(component,
			RT286_SET_AUDIO_POWER, AC_PWRST_D3);
		break;

	default:
		break;
	}

	return 0;
}