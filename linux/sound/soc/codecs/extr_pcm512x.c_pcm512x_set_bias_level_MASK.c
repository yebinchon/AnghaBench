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
struct pcm512x_priv {int /*<<< orphan*/  regmap; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  PCM512x_POWER ; 
 int /*<<< orphan*/  PCM512x_RQST ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct pcm512x_priv* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component,
				  enum snd_soc_bias_level level)
{
	struct pcm512x_priv *pcm512x = FUNC1(component->dev);
	int ret;

	switch (level) {
	case SND_SOC_BIAS_ON:
	case SND_SOC_BIAS_PREPARE:
		break;

	case SND_SOC_BIAS_STANDBY:
		ret = FUNC2(pcm512x->regmap, PCM512x_POWER,
					 PCM512x_RQST, 0);
		if (ret != 0) {
			FUNC0(component->dev, "Failed to remove standby: %d\n",
				ret);
			return ret;
		}
		break;

	case SND_SOC_BIAS_OFF:
		ret = FUNC2(pcm512x->regmap, PCM512x_POWER,
					 PCM512x_RQST, PCM512x_RQST);
		if (ret != 0) {
			FUNC0(component->dev, "Failed to request standby: %d\n",
				ret);
			return ret;
		}
		break;
	}

	return 0;
}