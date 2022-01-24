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
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MC13783_AUDIO_DAC ; 
 unsigned int* mc13783_rates ; 
 unsigned int FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *params,
				struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	unsigned int rate = FUNC1(params);
	int i;

	for (i = 0; i < FUNC0(mc13783_rates); i++) {
		if (rate == mc13783_rates[i]) {
			FUNC2(component, MC13783_AUDIO_DAC,
					0xf << 17, i << 17);
			return 0;
		}
	}

	return -EINVAL;
}