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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct da7213_priv {int /*<<< orphan*/  mclk; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int DA7213_BIAS_EN ; 
 int /*<<< orphan*/  DA7213_REFERENCES ; 
 int DA7213_VMID_EN ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct snd_soc_component*) ; 
 struct da7213_priv* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	struct da7213_priv *da7213 = FUNC4(component);
	int ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;
	case SND_SOC_BIAS_PREPARE:
		/* Enable MCLK for transition to ON state */
		if (FUNC3(component) == SND_SOC_BIAS_STANDBY) {
			if (da7213->mclk) {
				ret = FUNC1(da7213->mclk);
				if (ret) {
					FUNC2(component->dev,
						"Failed to enable mclk\n");
					return ret;
				}
			}
		}
		break;
	case SND_SOC_BIAS_STANDBY:
		if (FUNC3(component) == SND_SOC_BIAS_OFF) {
			/* Enable VMID reference & master bias */
			FUNC5(component, DA7213_REFERENCES,
					    DA7213_VMID_EN | DA7213_BIAS_EN,
					    DA7213_VMID_EN | DA7213_BIAS_EN);
		} else {
			/* Remove MCLK */
			if (da7213->mclk)
				FUNC0(da7213->mclk);
		}
		break;
	case SND_SOC_BIAS_OFF:
		/* Disable VMID reference & master bias */
		FUNC5(component, DA7213_REFERENCES,
				    DA7213_VMID_EN | DA7213_BIAS_EN, 0);
		break;
	}
	return 0;
}