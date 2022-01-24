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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TAS5720_DIGITAL_CTRL1_REG ; 
 int /*<<< orphan*/  TAS5720_SSZ_DS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 unsigned int FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
			     struct snd_pcm_hw_params *params,
			     struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	unsigned int rate = FUNC1(params);
	bool ssz_ds;
	int ret;

	switch (rate) {
	case 44100:
	case 48000:
		ssz_ds = false;
		break;
	case 88200:
	case 96000:
		ssz_ds = true;
		break;
	default:
		FUNC0(component->dev, "unsupported sample rate: %u\n", rate);
		return -EINVAL;
	}

	ret = FUNC2(component, TAS5720_DIGITAL_CTRL1_REG,
				  TAS5720_SSZ_DS, ssz_ds);
	if (ret < 0) {
		FUNC0(component->dev, "error setting sample rate: %d\n", ret);
		return ret;
	}

	return 0;
}