#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {int /*<<< orphan*/  dev; TYPE_1__* component; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
struct axg_tdm_stream {int /*<<< orphan*/  mask; } ;
struct axg_tdm_iface {int /*<<< orphan*/  rate; } ;
struct TYPE_2__ {scalar_t__ active; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct axg_tdm_stream* FUNC3 (struct snd_soc_dai*,struct snd_pcm_substream*) ; 
 struct axg_tdm_iface* FUNC4 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				 struct snd_soc_dai *dai)
{
	struct axg_tdm_iface *iface = FUNC4(dai);
	struct axg_tdm_stream *ts =
		FUNC3(dai, substream);
	int ret;

	if (!FUNC0(ts->mask)) {
		FUNC1(dai->dev, "interface has not slots\n");
		return -EINVAL;
	}

	/* Apply component wide rate symmetry */
	if (dai->component->active) {
		ret = FUNC2(substream->runtime,
						   SNDRV_PCM_HW_PARAM_RATE,
						   iface->rate);
		if (ret < 0) {
			FUNC1(dai->dev,
				"can't set iface rate constraint\n");
			return ret;
		}
	}

	return 0;
}