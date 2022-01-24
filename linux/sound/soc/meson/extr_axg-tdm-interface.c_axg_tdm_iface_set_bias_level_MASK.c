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
struct axg_tdm_iface {int /*<<< orphan*/  mclk; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_component*) ; 
 struct axg_tdm_iface* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component,
					enum snd_soc_bias_level level)
{
	struct axg_tdm_iface *iface = FUNC3(component);
	enum snd_soc_bias_level now =
		FUNC2(component);
	int ret = 0;

	switch (level) {
	case SND_SOC_BIAS_PREPARE:
		if (now == SND_SOC_BIAS_STANDBY)
			ret = FUNC1(iface->mclk);
		break;

	case SND_SOC_BIAS_STANDBY:
		if (now == SND_SOC_BIAS_PREPARE)
			FUNC0(iface->mclk);
		break;

	case SND_SOC_BIAS_OFF:
	case SND_SOC_BIAS_ON:
		break;
	}

	return ret;
}