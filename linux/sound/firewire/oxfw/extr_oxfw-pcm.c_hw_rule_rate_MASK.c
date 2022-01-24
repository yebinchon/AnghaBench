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
typedef  int /*<<< orphan*/  u8 ;
struct snd_pcm_hw_rule {int /*<<< orphan*/ ** private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_oxfw_stream_formation {int /*<<< orphan*/  rate; int /*<<< orphan*/  pcm; } ;
struct snd_interval {int integer; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int SND_OXFW_STREAM_FORMAT_ENTRIES ; 
 int /*<<< orphan*/  UINT_MAX ; 
 struct snd_interval* FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 struct snd_interval* FUNC1 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_interval*,struct snd_interval*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_interval const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct snd_oxfw_stream_formation*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_hw_params *params,
			struct snd_pcm_hw_rule *rule)
{
	u8 **formats = rule->private;
	struct snd_interval *r =
		FUNC0(params, SNDRV_PCM_HW_PARAM_RATE);
	const struct snd_interval *c =
		FUNC1(params, SNDRV_PCM_HW_PARAM_CHANNELS);
	struct snd_interval t = {
		.min = UINT_MAX, .max = 0, .integer = 1
	};
	struct snd_oxfw_stream_formation formation;
	int i, err;

	for (i = 0; i < SND_OXFW_STREAM_FORMAT_ENTRIES; i++) {
		if (formats[i] == NULL)
			continue;

		err = FUNC6(formats[i], &formation);
		if (err < 0)
			continue;
		if (!FUNC5(c, formation.pcm))
			continue;

		t.min = FUNC3(t.min, formation.rate);
		t.max = FUNC2(t.max, formation.rate);

	}
	return FUNC4(r, &t);
}