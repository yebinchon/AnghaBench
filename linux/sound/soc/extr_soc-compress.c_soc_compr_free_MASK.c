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
struct snd_soc_pcm_runtime {int pop_wait; TYPE_5__* card; int /*<<< orphan*/  pmdown_time; int /*<<< orphan*/  delayed_work; TYPE_2__* dai_link; struct snd_soc_dai* codec_dai; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {TYPE_4__* driver; scalar_t__ rate; int /*<<< orphan*/  active; } ;
struct snd_compr_stream {int /*<<< orphan*/  direction; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_10__ {int /*<<< orphan*/  pcm_mutex; int /*<<< orphan*/  pcm_subclass; } ;
struct TYPE_9__ {TYPE_3__* cops; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* shutdown ) (struct snd_compr_stream*,struct snd_soc_dai*) ;} ;
struct TYPE_7__ {TYPE_1__* compr_ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* shutdown ) (struct snd_compr_stream*) ;} ;

/* Variables and functions */
 int SNDRV_PCM_STREAM_CAPTURE ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  SND_COMPRESS_PLAYBACK ; 
 int /*<<< orphan*/  SND_SOC_DAPM_STREAM_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dai*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_pcm_runtime*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_pcm_runtime*,int) ; 
 scalar_t__ FUNC7 (struct snd_soc_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_compr_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_compr_stream*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_compr_stream*,struct snd_soc_dai*) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static int FUNC11(struct snd_compr_stream *cstream)
{
	struct snd_soc_pcm_runtime *rtd = cstream->private_data;
	struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	int stream;

	FUNC1(&rtd->card->pcm_mutex, rtd->card->pcm_subclass);

	if (cstream->direction == SND_COMPRESS_PLAYBACK)
		stream = SNDRV_PCM_STREAM_PLAYBACK;
	else
		stream = SNDRV_PCM_STREAM_CAPTURE;

	FUNC6(rtd, stream);

	FUNC4(codec_dai, 1, cstream->direction);

	if (!cpu_dai->active)
		cpu_dai->rate = 0;

	if (!codec_dai->active)
		codec_dai->rate = 0;

	if (rtd->dai_link->compr_ops && rtd->dai_link->compr_ops->shutdown)
		rtd->dai_link->compr_ops->shutdown(cstream);

	FUNC8(cstream, NULL);

	if (cpu_dai->driver->cops && cpu_dai->driver->cops->shutdown)
		cpu_dai->driver->cops->shutdown(cstream, cpu_dai);

	if (cstream->direction == SND_COMPRESS_PLAYBACK) {
		if (FUNC7(rtd)) {
			FUNC5(rtd,
						  SNDRV_PCM_STREAM_PLAYBACK,
						  SND_SOC_DAPM_STREAM_STOP);
		} else {
			rtd->pop_wait = 1;
			FUNC3(system_power_efficient_wq,
					   &rtd->delayed_work,
					   FUNC0(rtd->pmdown_time));
		}
	} else {
		/* capture streams can be powered down now */
		FUNC5(rtd,
					  SNDRV_PCM_STREAM_CAPTURE,
					  SND_SOC_DAPM_STREAM_STOP);
	}

	FUNC2(&rtd->card->pcm_mutex);
	return 0;
}