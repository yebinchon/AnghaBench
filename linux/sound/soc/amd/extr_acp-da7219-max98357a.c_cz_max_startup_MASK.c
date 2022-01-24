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
struct snd_soc_pcm_runtime {struct snd_soc_card* card; } ;
struct snd_soc_card {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int /*<<< orphan*/  channels_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct acp_platform_info {int /*<<< orphan*/  play_i2s_instance; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUAL_CHANNEL ; 
 int /*<<< orphan*/  I2S_BT_INSTANCE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  constraints_channels ; 
 int /*<<< orphan*/  constraints_rates ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct acp_platform_info* FUNC1 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_card *card = rtd->card;
	struct acp_platform_info *machine = FUNC1(card);

	/*
	 * On this platform for PCM device we support stereo
	 */

	runtime->hw.channels_max = DUAL_CHANNEL;
	FUNC0(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
				   &constraints_channels);
	FUNC0(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
				   &constraints_rates);

	machine->play_i2s_instance = I2S_BT_INSTANCE;
	return 0;
}