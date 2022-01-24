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
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct adav80x {unsigned int sysclk; unsigned int rate; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,struct snd_soc_dai*,struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,struct snd_soc_dai*,struct snd_pcm_hw_params*) ; 
 unsigned int FUNC5 (struct snd_pcm_hw_params*) ; 
 struct adav80x* FUNC6 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
		struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct adav80x *adav80x = FUNC6(component);
	unsigned int rate = FUNC5(params);

	if (rate * 256 != adav80x->sysclk)
		return -EINVAL;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		FUNC4(component, dai, params);
		FUNC2(component, rate);
	} else {
		FUNC1(component, dai, params);
		FUNC0(component, rate);
	}
	adav80x->rate = rate;
	FUNC3(component);

	return 0;
}