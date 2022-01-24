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
struct tas571x_private {int /*<<< orphan*/  mclk; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct snd_soc_component*) ; 
 struct tas571x_private* FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component,
				  enum snd_soc_bias_level level)
{
	struct tas571x_private *priv = FUNC5(component);
	int ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;
	case SND_SOC_BIAS_PREPARE:
		break;
	case SND_SOC_BIAS_STANDBY:
		if (FUNC4(component) == SND_SOC_BIAS_OFF) {
			if (!FUNC0(priv->mclk)) {
				ret = FUNC2(priv->mclk);
				if (ret) {
					FUNC3(component->dev,
						"Failed to enable master clock: %d\n",
						ret);
					return ret;
				}
			}
		}
		break;
	case SND_SOC_BIAS_OFF:
		if (!FUNC0(priv->mclk))
			FUNC1(priv->mclk);
		break;
	}

	return 0;
}