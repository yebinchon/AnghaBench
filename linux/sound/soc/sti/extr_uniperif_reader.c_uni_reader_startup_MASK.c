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
struct uniperif {int /*<<< orphan*/  irq_lock; struct snd_pcm_substream* substream; } ;
struct TYPE_2__ {struct uniperif* uni; } ;
struct sti_uniperiph_data {TYPE_1__ dai_data; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (struct uniperif*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uniperif*,int /*<<< orphan*/ ,int) ; 
 struct sti_uniperiph_data* FUNC2 (struct snd_soc_dai*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  sti_uniperiph_fix_tdm_chan ; 
 int /*<<< orphan*/  sti_uniperiph_fix_tdm_format ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
			      struct snd_soc_dai *dai)
{
	struct sti_uniperiph_data *priv = FUNC2(dai);
	struct uniperif *reader = priv->dai_data.uni;
	unsigned long flags;
	int ret;

	FUNC3(&reader->irq_lock, flags);
	reader->substream = substream;
	FUNC4(&reader->irq_lock, flags);

	if (!FUNC0(reader))
		return 0;

	/* refine hw constraint in tdm mode */
	ret = FUNC1(substream->runtime, 0,
				  SNDRV_PCM_HW_PARAM_CHANNELS,
				  sti_uniperiph_fix_tdm_chan,
				  reader, SNDRV_PCM_HW_PARAM_CHANNELS,
				  -1);
	if (ret < 0)
		return ret;

	return FUNC1(substream->runtime, 0,
				   SNDRV_PCM_HW_PARAM_FORMAT,
				   sti_uniperiph_fix_tdm_format,
				   reader, SNDRV_PCM_HW_PARAM_FORMAT,
				   -1);
}