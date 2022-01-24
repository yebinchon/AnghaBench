#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {TYPE_5__* card; int /*<<< orphan*/  delayed_work; scalar_t__ pop_wait; TYPE_4__* dai_link; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {TYPE_2__* driver; } ;
struct snd_compr_stream {scalar_t__ direction; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_compr_params {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  pcm_mutex; int /*<<< orphan*/  pcm_subclass; } ;
struct TYPE_9__ {TYPE_3__* compr_ops; } ;
struct TYPE_8__ {int (* set_params ) (struct snd_compr_stream*) ;} ;
struct TYPE_7__ {TYPE_1__* cops; } ;
struct TYPE_6__ {int (* set_params ) (struct snd_compr_stream*,struct snd_compr_params*,struct snd_soc_dai*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 scalar_t__ SND_COMPRESS_PLAYBACK ; 
 int /*<<< orphan*/  SND_SOC_DAPM_STREAM_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_compr_stream*,struct snd_compr_params*) ; 
 int FUNC5 (struct snd_compr_stream*,struct snd_compr_params*,struct snd_soc_dai*) ; 
 int FUNC6 (struct snd_compr_stream*) ; 

__attribute__((used)) static int FUNC7(struct snd_compr_stream *cstream,
				struct snd_compr_params *params)
{
	struct snd_soc_pcm_runtime *rtd = cstream->private_data;
	struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
	int ret;

	FUNC1(&rtd->card->pcm_mutex, rtd->card->pcm_subclass);

	/*
	 * First we call set_params for the CPU DAI, then the component
	 * driver this should configure the SoC side. If the machine has
	 * compressed ops then we call that as well. The expectation is
	 * that these callbacks will configure everything for this compress
	 * path, like configuring a PCM port for a CODEC.
	 */
	if (cpu_dai->driver->cops && cpu_dai->driver->cops->set_params) {
		ret = cpu_dai->driver->cops->set_params(cstream, params, cpu_dai);
		if (ret < 0)
			goto err;
	}

	ret = FUNC4(cstream, params);
	if (ret < 0)
		goto err;

	if (rtd->dai_link->compr_ops && rtd->dai_link->compr_ops->set_params) {
		ret = rtd->dai_link->compr_ops->set_params(cstream);
		if (ret < 0)
			goto err;
	}

	if (cstream->direction == SND_COMPRESS_PLAYBACK)
		FUNC3(rtd, SNDRV_PCM_STREAM_PLAYBACK,
					  SND_SOC_DAPM_STREAM_START);
	else
		FUNC3(rtd, SNDRV_PCM_STREAM_CAPTURE,
					  SND_SOC_DAPM_STREAM_START);

	/* cancel any delayed stream shutdown that is pending */
	rtd->pop_wait = 0;
	FUNC2(&rtd->card->pcm_mutex);

	FUNC0(&rtd->delayed_work);

	return 0;

err:
	FUNC2(&rtd->card->pcm_mutex);
	return ret;
}