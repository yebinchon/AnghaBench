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
struct tscs42xx {unsigned int bclk_ratio; int /*<<< orphan*/  audio_params_lock; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RM_ADCSR_ABCM ; 
 int /*<<< orphan*/  RM_DACSR_DBCM ; 
 unsigned int RV_DACSR_DBCM_32 ; 
 unsigned int RV_DACSR_DBCM_40 ; 
 unsigned int RV_DACSR_DBCM_64 ; 
 int /*<<< orphan*/  R_ADCSR ; 
 int /*<<< orphan*/  R_DACSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tscs42xx* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dai *codec_dai,
		unsigned int ratio)
{
	struct snd_soc_component *component = codec_dai->component;
	struct tscs42xx *tscs42xx = FUNC3(component);
	unsigned int value;
	int ret = 0;

	switch (ratio) {
	case 32:
		value = RV_DACSR_DBCM_32;
		break;
	case 40:
		value = RV_DACSR_DBCM_40;
		break;
	case 64:
		value = RV_DACSR_DBCM_64;
		break;
	default:
		FUNC0(component->dev, "Unsupported bclk ratio (%d)\n", ret);
		return -EINVAL;
	}

	ret = FUNC4(component,
			R_DACSR, RM_DACSR_DBCM, value);
	if (ret < 0) {
		FUNC0(component->dev,
				"Failed to set DAC BCLK ratio (%d)\n", ret);
		return ret;
	}
	ret = FUNC4(component,
			R_ADCSR, RM_ADCSR_ABCM, value);
	if (ret < 0) {
		FUNC0(component->dev,
				"Failed to set ADC BCLK ratio (%d)\n", ret);
		return ret;
	}

	FUNC1(&tscs42xx->audio_params_lock);

	tscs42xx->bclk_ratio = ratio;

	FUNC2(&tscs42xx->audio_params_lock);

	return 0;
}