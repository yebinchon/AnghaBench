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
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int /*<<< orphan*/  rates; int /*<<< orphan*/  formats; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct amdtp_stream {int dummy; } ;
struct snd_efw {unsigned int* pcm_capture_channels; unsigned int* pcm_playback_channels; int /*<<< orphan*/  supported_sampling_rate; struct amdtp_stream rx_stream; struct amdtp_stream tx_stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  AM824_IN_PCM_FORMAT_BITS ; 
 int /*<<< orphan*/  AM824_OUT_PCM_FORMAT_BITS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 int FUNC0 (struct amdtp_stream*,struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  hw_rule_channels ; 
 int /*<<< orphan*/  hw_rule_rate ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int*) ; 
 int FUNC2 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_runtime*) ; 

__attribute__((used)) static int
FUNC4(struct snd_efw *efw,
		   struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct amdtp_stream *s;
	unsigned int *pcm_channels;
	int err;

	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
		runtime->hw.formats = AM824_IN_PCM_FORMAT_BITS;
		s = &efw->tx_stream;
		pcm_channels = efw->pcm_capture_channels;
	} else {
		runtime->hw.formats = AM824_OUT_PCM_FORMAT_BITS;
		s = &efw->rx_stream;
		pcm_channels = efw->pcm_playback_channels;
	}

	/* limit rates */
	runtime->hw.rates = efw->supported_sampling_rate,
	FUNC3(runtime);

	FUNC1(&runtime->hw, pcm_channels);

	err = FUNC2(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
				  hw_rule_channels, pcm_channels,
				  SNDRV_PCM_HW_PARAM_RATE, -1);
	if (err < 0)
		goto end;

	err = FUNC2(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
				  hw_rule_rate, pcm_channels,
				  SNDRV_PCM_HW_PARAM_CHANNELS, -1);
	if (err < 0)
		goto end;

	err = FUNC0(s, runtime);
end:
	return err;
}