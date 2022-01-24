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
struct snd_sof_pcm {TYPE_1__* stream; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {size_t stream; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  period_elapsed_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct snd_sof_dev* FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct snd_sof_pcm* FUNC4 (struct snd_sof_dev*,struct snd_soc_pcm_runtime*) ; 

void FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *component =
		FUNC3(rtd, DRV_NAME);
	struct snd_sof_dev *sdev = FUNC2(component);
	struct snd_sof_pcm *spcm;

	spcm = FUNC4(sdev, rtd);
	if (!spcm) {
		FUNC0(sdev->dev,
			"error: period elapsed for unknown stream!\n");
		return;
	}

	/*
	 * snd_pcm_period_elapsed() can be called in interrupt context
	 * before IRQ_HANDLED is returned. Inside snd_pcm_period_elapsed(),
	 * when the PCM is done draining or xrun happened, a STOP IPC will
	 * then be sent and this IPC will hit IPC timeout.
	 * To avoid sending IPC before the previous IPC is handled, we
	 * schedule delayed work here to call the snd_pcm_period_elapsed().
	 */
	FUNC1(&spcm->stream[substream->stream].period_elapsed_work);
}