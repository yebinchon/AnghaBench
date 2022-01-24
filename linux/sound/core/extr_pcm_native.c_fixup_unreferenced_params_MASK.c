#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_3__* runtime; TYPE_1__* ops; } ;
struct snd_pcm_hw_params {int rate_den; int info; int /*<<< orphan*/  fifo_size; void* rate_num; void* msbits; } ;
struct snd_mask {int dummy; } ;
struct snd_interval {int dummy; } ;
struct TYPE_5__ {int info; } ;
struct TYPE_6__ {TYPE_2__ hw; } ;
struct TYPE_4__ {int (* ioctl ) (struct snd_pcm_substream*,int /*<<< orphan*/ ,struct snd_pcm_hw_params*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_SAMPLE_BITS ; 
 int SNDRV_PCM_INFO_DRAIN_TRIGGER ; 
 int SNDRV_PCM_INFO_FIFO_IN_FRAMES ; 
 int SNDRV_PCM_INFO_MMAP ; 
 int SNDRV_PCM_INFO_MMAP_VALID ; 
 int /*<<< orphan*/  SNDRV_PCM_IOCTL1_FIFO_SIZE ; 
 struct snd_interval* FUNC0 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 struct snd_mask* FUNC1 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC3 (struct snd_interval const*) ; 
 void* FUNC4 (struct snd_interval const*) ; 
 scalar_t__ FUNC5 (struct snd_mask const*) ; 
 int FUNC6 (struct snd_pcm_substream*,int /*<<< orphan*/ ,struct snd_pcm_hw_params*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
				     struct snd_pcm_hw_params *params)
{
	const struct snd_interval *i;
	const struct snd_mask *m;
	int err;

	if (!params->msbits) {
		i = FUNC0(params, SNDRV_PCM_HW_PARAM_SAMPLE_BITS);
		if (FUNC3(i))
			params->msbits = FUNC4(i);
	}

	if (!params->rate_den) {
		i = FUNC0(params, SNDRV_PCM_HW_PARAM_RATE);
		if (FUNC3(i)) {
			params->rate_num = FUNC4(i);
			params->rate_den = 1;
		}
	}

	if (!params->fifo_size) {
		m = FUNC1(params, SNDRV_PCM_HW_PARAM_FORMAT);
		i = FUNC0(params, SNDRV_PCM_HW_PARAM_CHANNELS);
		if (FUNC5(m) && FUNC3(i)) {
			err = substream->ops->ioctl(substream,
					SNDRV_PCM_IOCTL1_FIFO_SIZE, params);
			if (err < 0)
				return err;
		}
	}

	if (!params->info) {
		params->info = substream->runtime->hw.info;
		params->info &= ~(SNDRV_PCM_INFO_FIFO_IN_FRAMES |
				  SNDRV_PCM_INFO_DRAIN_TRIGGER);
		if (!FUNC2(substream))
			params->info &= ~(SNDRV_PCM_INFO_MMAP |
					  SNDRV_PCM_INFO_MMAP_VALID);
	}

	return 0;
}