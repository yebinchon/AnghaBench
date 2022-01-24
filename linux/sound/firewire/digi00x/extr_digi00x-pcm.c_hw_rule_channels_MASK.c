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
struct snd_pcm_hw_rule {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int integer; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 unsigned int SND_DG00X_RATE_COUNT ; 
 int /*<<< orphan*/  UINT_MAX ; 
 struct snd_interval* FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 struct snd_interval* FUNC1 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * snd_dg00x_stream_pcm_channels ; 
 int /*<<< orphan*/ * snd_dg00x_stream_rates ; 
 int FUNC4 (struct snd_interval*,struct snd_interval*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_interval const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_hw_params *params,
			    struct snd_pcm_hw_rule *rule)
{
	struct snd_interval *c =
		FUNC0(params, SNDRV_PCM_HW_PARAM_CHANNELS);
	const struct snd_interval *r =
		FUNC1(params, SNDRV_PCM_HW_PARAM_RATE);
	struct snd_interval t = {
		.min = UINT_MAX, .max = 0, .integer = 1,
	};
	unsigned int i;

	for (i = 0; i < SND_DG00X_RATE_COUNT; i++) {
		if (!FUNC5(r, snd_dg00x_stream_rates[i]))
			continue;

		t.min = FUNC3(t.min, snd_dg00x_stream_pcm_channels[i]);
		t.max = FUNC2(t.max, snd_dg00x_stream_pcm_channels[i]);
	}

	return FUNC4(c, &t);
}