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
struct snd_pcm_hw_rule {struct snd_bebob_stream_formation* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int integer; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
struct snd_bebob_stream_formation {scalar_t__ pcm; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 unsigned int SND_BEBOB_STRM_FMT_ENTRIES ; 
 int /*<<< orphan*/  UINT_MAX ; 
 struct snd_interval* FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 struct snd_interval* FUNC1 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * snd_bebob_rate_table ; 
 int FUNC4 (struct snd_interval*,struct snd_interval*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_interval const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct snd_pcm_hw_params *params, struct snd_pcm_hw_rule *rule)
{
	struct snd_bebob_stream_formation *formations = rule->private;
	struct snd_interval *c =
		FUNC0(params, SNDRV_PCM_HW_PARAM_CHANNELS);
	const struct snd_interval *r =
		FUNC1(params, SNDRV_PCM_HW_PARAM_RATE);
	struct snd_interval t = {
		.min = UINT_MAX, .max = 0, .integer = 1
	};

	unsigned int i;

	for (i = 0; i < SND_BEBOB_STRM_FMT_ENTRIES; i++) {
		/* entry is invalid */
		if (formations[i].pcm == 0)
			continue;

		if (!FUNC5(r, snd_bebob_rate_table[i]))
			continue;

		t.min = FUNC3(t.min, formations[i].pcm);
		t.max = FUNC2(t.max, formations[i].pcm);
	}

	return FUNC4(c, &t);
}