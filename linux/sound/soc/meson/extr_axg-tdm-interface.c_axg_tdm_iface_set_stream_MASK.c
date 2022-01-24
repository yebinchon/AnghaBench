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
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axg_tdm_stream {void* channels; void* width; int /*<<< orphan*/  physical_width; int /*<<< orphan*/  mask; } ;
struct axg_tdm_iface {unsigned int slot_width; int /*<<< orphan*/  rate; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_hw_params*) ; 
 void* FUNC5 (struct snd_pcm_hw_params*) ; 
 struct axg_tdm_stream* FUNC6 (struct snd_soc_dai*,struct snd_pcm_substream*) ; 
 struct axg_tdm_iface* FUNC7 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
				    struct snd_pcm_hw_params *params,
				    struct snd_soc_dai *dai)
{
	struct axg_tdm_iface *iface = FUNC7(dai);
	struct axg_tdm_stream *ts = FUNC6(dai, substream);
	unsigned int channels = FUNC2(params);
	unsigned int width = FUNC5(params);

	/* Save rate and sample_bits for component symmetry */
	iface->rate = FUNC4(params);

	/* Make sure this interface can cope with the stream */
	if (FUNC0(ts->mask) < channels) {
		FUNC1(dai->dev, "not enough slots for channels\n");
		return -EINVAL;
	}

	if (iface->slot_width < width) {
		FUNC1(dai->dev, "incompatible slots width for stream\n");
		return -EINVAL;
	}

	/* Save the parameter for tdmout/tdmin widgets */
	ts->physical_width = FUNC3(params);
	ts->width = FUNC5(params);
	ts->channels = FUNC2(params);

	return 0;
}