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
struct snd_pcm_hw_rule {struct snd_motu_packet_format* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_motu_packet_format {unsigned int* fixed_part_pcm_chunks; unsigned int* differed_part_pcm_chunks; } ;
struct snd_interval {int integer; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  UINT_MAX ; 
 struct snd_interval* FUNC1 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 struct snd_interval* FUNC2 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (struct snd_interval*,struct snd_interval*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_interval const*,unsigned int) ; 
 unsigned int* snd_motu_clock_rates ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_hw_params *params,
				struct snd_pcm_hw_rule *rule)
{
	struct snd_motu_packet_format *formats = rule->private;

	const struct snd_interval *c =
		FUNC2(params, SNDRV_PCM_HW_PARAM_CHANNELS);
	struct snd_interval *r =
		FUNC1(params, SNDRV_PCM_HW_PARAM_RATE);
	struct snd_interval rates = {
		.min = UINT_MAX, .max = 0, .integer = 1
	};
	unsigned int i, pcm_channels, rate, mode;

	for (i = 0; i < FUNC0(snd_motu_clock_rates); ++i) {
		rate = snd_motu_clock_rates[i];
		mode = i / 2;

		pcm_channels = formats->fixed_part_pcm_chunks[mode] +
			       formats->differed_part_pcm_chunks[mode];
		if (!FUNC6(c, pcm_channels))
			continue;

		rates.min = FUNC4(rates.min, rate);
		rates.max = FUNC3(rates.max, rate);
	}

	return FUNC5(r, &rates);
}