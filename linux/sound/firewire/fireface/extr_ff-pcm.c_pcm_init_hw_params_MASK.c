#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct TYPE_4__ {void* formats; } ;
struct snd_pcm_runtime {TYPE_2__ hw; } ;
struct amdtp_stream {int dummy; } ;
struct snd_ff {TYPE_1__* spec; struct amdtp_stream rx_stream; struct amdtp_stream tx_stream; } ;
struct TYPE_3__ {unsigned int* pcm_capture_channels; unsigned int* pcm_playback_channels; } ;

/* Variables and functions */
 void* SNDRV_PCM_FMTBIT_S32 ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 int FUNC0 (struct amdtp_stream*,struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  hw_rule_channels ; 
 int /*<<< orphan*/  hw_rule_rate ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,unsigned int const*) ; 
 int FUNC2 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct snd_ff *ff,
			      struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct amdtp_stream *s;
	const unsigned int *pcm_channels;
	int err;

	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
		runtime->hw.formats = SNDRV_PCM_FMTBIT_S32;
		s = &ff->tx_stream;
		pcm_channels = ff->spec->pcm_capture_channels;
	} else {
		runtime->hw.formats = SNDRV_PCM_FMTBIT_S32;
		s = &ff->rx_stream;
		pcm_channels = ff->spec->pcm_playback_channels;
	}

	FUNC1(&runtime->hw, pcm_channels);

	err = FUNC2(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
				  hw_rule_channels, (void *)pcm_channels,
				  SNDRV_PCM_HW_PARAM_RATE, -1);
	if (err < 0)
		return err;

	err = FUNC2(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
				  hw_rule_rate, (void *)pcm_channels,
				  SNDRV_PCM_HW_PARAM_CHANNELS, -1);
	if (err < 0)
		return err;

	return FUNC0(s, runtime);
}