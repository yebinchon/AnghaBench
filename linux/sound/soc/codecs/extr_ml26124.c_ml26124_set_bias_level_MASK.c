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
struct ml26124_priv {int /*<<< orphan*/  regmap; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int ML26124_BLT_ALL_ON ; 
 int ML26124_BLT_PREAMP_ON ; 
 int ML26124_MICBEN_ON ; 
 int /*<<< orphan*/  ML26124_PW_REF_PW_MNG ; 
 int /*<<< orphan*/  ML26124_PW_SPAMP_PW_MNG ; 
 int ML26124_R26_MASK ; 
 int ML26124_VMID ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_component*) ; 
 struct ml26124_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component,
		enum snd_soc_bias_level level)
{
	struct ml26124_priv *priv = FUNC3(component);

	switch (level) {
	case SND_SOC_BIAS_ON:
		FUNC4(component, ML26124_PW_SPAMP_PW_MNG,
				    ML26124_R26_MASK, ML26124_BLT_PREAMP_ON);
		FUNC0(100);
		FUNC4(component, ML26124_PW_SPAMP_PW_MNG,
				    ML26124_R26_MASK,
				    ML26124_MICBEN_ON | ML26124_BLT_ALL_ON);
		break;
	case SND_SOC_BIAS_PREPARE:
		break;
	case SND_SOC_BIAS_STANDBY:
		/* VMID ON */
		if (FUNC2(component) == SND_SOC_BIAS_OFF) {
			FUNC4(component, ML26124_PW_REF_PW_MNG,
					    ML26124_VMID, ML26124_VMID);
			FUNC0(500);
			FUNC1(priv->regmap);
		}
		break;
	case SND_SOC_BIAS_OFF:
		/* VMID OFF */
		FUNC4(component, ML26124_PW_REF_PW_MNG,
				    ML26124_VMID, 0);
		break;
	}
	return 0;
}