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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  delay; int /*<<< orphan*/  period_size; struct audio_substream_data* private_data; } ;
struct audio_substream_data {scalar_t__ bytescount; scalar_t__ dma_dscr_idx_1; int /*<<< orphan*/  dma_curr_dscr; int /*<<< orphan*/  acp_mmio; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 scalar_t__ FUNC0 (struct audio_substream_data*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_runtime*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC5(struct snd_pcm_substream *substream)
{
	u32 buffersize;
	u32 pos = 0;
	u64 bytescount = 0;
	u16 dscr;
	u32 period_bytes, delay;

	struct snd_pcm_runtime *runtime = substream->runtime;
	struct audio_substream_data *rtd = runtime->private_data;

	if (!rtd)
		return -EINVAL;

	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
		period_bytes = FUNC4(runtime, runtime->period_size);
		bytescount = FUNC0(rtd);
		if (bytescount >= rtd->bytescount)
			bytescount -= rtd->bytescount;
		if (bytescount < period_bytes) {
			pos = 0;
		} else {
			dscr = FUNC1(rtd->acp_mmio, rtd->dma_curr_dscr);
			if (dscr == rtd->dma_dscr_idx_1)
				pos = period_bytes;
			else
				pos = 0;
		}
		if (bytescount > 0) {
			delay = FUNC3(bytescount, period_bytes);
			runtime->delay = FUNC2(runtime, delay);
		}
	} else {
		buffersize = FUNC4(runtime, runtime->buffer_size);
		bytescount = FUNC0(rtd);
		if (bytescount > rtd->bytescount)
			bytescount -= rtd->bytescount;
		pos = FUNC3(bytescount, buffersize);
	}
	return FUNC2(runtime, pos);
}