#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct snd_sst_tstamp {scalar_t__ ring_buffer_counter; scalar_t__ hardware_counter; } ;
struct snd_pcm_substream {scalar_t__ stream; TYPE_1__* runtime; } ;
struct pcm_stream_info {int buffer_ptr; size_t pcm_delay; } ;
struct intel_sst_drv {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int channels; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 size_t FUNC0 (TYPE_1__*,size_t) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,size_t,int*) ; 
 size_t FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static inline int FUNC5(struct intel_sst_drv *ctx,
		struct pcm_stream_info *info,
		struct snd_pcm_substream *substream,
		struct snd_sst_tstamp *fw_tstamp)
{
	size_t delay_bytes, delay_frames;
	size_t buffer_sz;
	u32 pointer_bytes, pointer_samples;

	FUNC2(ctx->dev, "mrfld ring_buffer_counter %llu in bytes\n",
			fw_tstamp->ring_buffer_counter);
	FUNC2(ctx->dev, "mrfld hardware_counter %llu in bytes\n",
			 fw_tstamp->hardware_counter);
	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		delay_bytes = (size_t) (fw_tstamp->ring_buffer_counter -
					fw_tstamp->hardware_counter);
	else
		delay_bytes = (size_t) (fw_tstamp->hardware_counter -
					fw_tstamp->ring_buffer_counter);
	delay_frames = FUNC0(substream->runtime, delay_bytes);
	buffer_sz = FUNC4(substream);
	FUNC3(fw_tstamp->ring_buffer_counter, buffer_sz, &pointer_bytes);
	pointer_samples = FUNC1(substream->runtime, pointer_bytes);

	FUNC2(ctx->dev, "pcm delay %zu in bytes\n", delay_bytes);

	info->buffer_ptr = pointer_samples / substream->runtime->channels;

	info->pcm_delay = delay_frames;
	FUNC2(ctx->dev, "buffer ptr %llu pcm_delay rep: %llu\n",
			info->buffer_ptr, info->pcm_delay);
	return 0;
}