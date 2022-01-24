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
struct tscs42xx {unsigned int samplerate; int /*<<< orphan*/  audio_params_lock; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RM_DACSR_DBM ; 
 int /*<<< orphan*/  RM_DACSR_DBR ; 
 unsigned int RV_DACSR_DBM_1 ; 
 unsigned int RV_DACSR_DBM_2 ; 
 unsigned int RV_DACSR_DBM_PT25 ; 
 unsigned int RV_DACSR_DBM_PT5 ; 
 unsigned int RV_DACSR_DBR_32 ; 
 unsigned int RV_DACSR_DBR_44_1 ; 
 unsigned int RV_DACSR_DBR_48 ; 
 int /*<<< orphan*/  R_ADCSR ; 
 int /*<<< orphan*/  R_DACSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tscs42xx* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component,
		unsigned int rate)
{
	struct tscs42xx *tscs42xx = FUNC3(component);
	unsigned int br, bm;
	int ret;

	switch (rate) {
	case 8000:
		br = RV_DACSR_DBR_32;
		bm = RV_DACSR_DBM_PT25;
		break;
	case 16000:
		br = RV_DACSR_DBR_32;
		bm = RV_DACSR_DBM_PT5;
		break;
	case 24000:
		br = RV_DACSR_DBR_48;
		bm = RV_DACSR_DBM_PT5;
		break;
	case 32000:
		br = RV_DACSR_DBR_32;
		bm = RV_DACSR_DBM_1;
		break;
	case 48000:
		br = RV_DACSR_DBR_48;
		bm = RV_DACSR_DBM_1;
		break;
	case 96000:
		br = RV_DACSR_DBR_48;
		bm = RV_DACSR_DBM_2;
		break;
	case 11025:
		br = RV_DACSR_DBR_44_1;
		bm = RV_DACSR_DBM_PT25;
		break;
	case 22050:
		br = RV_DACSR_DBR_44_1;
		bm = RV_DACSR_DBM_PT5;
		break;
	case 44100:
		br = RV_DACSR_DBR_44_1;
		bm = RV_DACSR_DBM_1;
		break;
	case 88200:
		br = RV_DACSR_DBR_44_1;
		bm = RV_DACSR_DBM_2;
		break;
	default:
		FUNC0(component->dev, "Unsupported sample rate %d\n", rate);
		return -EINVAL;
	}

	/* DAC and ADC share bit and frame clock */
	ret = FUNC4(component,
			R_DACSR, RM_DACSR_DBR, br);
	if (ret < 0) {
		FUNC0(component->dev,
				"Failed to update register (%d)\n", ret);
		return ret;
	}
	ret = FUNC4(component,
			R_DACSR, RM_DACSR_DBM, bm);
	if (ret < 0) {
		FUNC0(component->dev,
				"Failed to update register (%d)\n", ret);
		return ret;
	}
	ret = FUNC4(component,
			R_ADCSR, RM_DACSR_DBR, br);
	if (ret < 0) {
		FUNC0(component->dev,
				"Failed to update register (%d)\n", ret);
		return ret;
	}
	ret = FUNC4(component,
			R_ADCSR, RM_DACSR_DBM, bm);
	if (ret < 0) {
		FUNC0(component->dev,
				"Failed to update register (%d)\n", ret);
		return ret;
	}

	FUNC1(&tscs42xx->audio_params_lock);

	tscs42xx->samplerate = rate;

	FUNC2(&tscs42xx->audio_params_lock);

	return 0;
}