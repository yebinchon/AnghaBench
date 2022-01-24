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
typedef  int /*<<< orphan*/  u32 ;
struct sst_hsw_stream {int dummy; } ;
struct sst_hsw {int dummy; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  dev; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned char* dma_area; int buffer_size; int /*<<< orphan*/  format; TYPE_1__* control; int /*<<< orphan*/  dma_bytes; } ;
struct hsw_priv_data {struct sst_hsw* hsw; } ;
struct hsw_pcm_data {int /*<<< orphan*/  stream; struct snd_pcm_substream* substream; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  scalar_t__ snd_pcm_uframes_t ;
struct TYPE_2__ {int appl_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 unsigned char* FUNC0 (unsigned char*,struct snd_pcm_runtime*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_runtime*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_substream*) ; 
 struct hsw_priv_data* FUNC8 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC9 (struct snd_soc_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sst_hsw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sst_hsw*,struct sst_hsw_stream*) ; 
 int /*<<< orphan*/  FUNC12 (struct sst_hsw*,struct sst_hsw_stream*) ; 
 int /*<<< orphan*/  FUNC13 (struct sst_hsw*,struct sst_hsw_stream*,scalar_t__) ; 

__attribute__((used)) static u32 FUNC14(struct sst_hsw_stream *stream, void *data)
{
	struct hsw_pcm_data *pcm_data = data;
	struct snd_pcm_substream *substream = pcm_data->substream;
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_soc_pcm_runtime *rtd = substream->private_data;
	struct snd_soc_component *component = FUNC9(rtd, DRV_NAME);
	struct hsw_priv_data *pdata = FUNC8(component);
	struct sst_hsw *hsw = pdata->hsw;
	u32 pos;
	snd_pcm_uframes_t position = FUNC2(runtime,
		 FUNC10(hsw, pcm_data->stream));
	unsigned char *dma_area = runtime->dma_area;
	snd_pcm_uframes_t dma_frames =
		FUNC2(runtime, runtime->dma_bytes);
	snd_pcm_uframes_t old_position;
	ssize_t samples;

	pos = FUNC5(runtime,
		(runtime->control->appl_ptr % runtime->buffer_size));

	FUNC4(rtd->dev, "PCM: App pointer %d bytes\n", pos);

	/* SST fw don't know where to stop dma
	 * So, SST driver need to clean the data which has been consumed
	 */
	if (dma_area == NULL || dma_frames <= 0
		|| (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
		|| !FUNC12(hsw, stream)) {
		FUNC7(substream);
		return pos;
	}

	old_position = FUNC11(hsw, stream);
	if (position > old_position) {
		if (position < dma_frames) {
			samples = FUNC1(runtime, position - old_position);
			FUNC6(runtime->format,
				FUNC0(dma_area,
					runtime, old_position),
				samples);
		} else
			FUNC3(rtd->dev, "PCM: position is wrong\n");
	} else {
		if (old_position < dma_frames) {
			samples = FUNC1(runtime,
				dma_frames - old_position);
			FUNC6(runtime->format,
				FUNC0(dma_area,
					runtime, old_position),
				samples);
		} else
			FUNC3(rtd->dev, "PCM: dma_bytes is wrong\n");
		if (position < dma_frames) {
			samples = FUNC1(runtime, position);
			FUNC6(runtime->format,
				dma_area, samples);
		} else
			FUNC3(rtd->dev, "PCM: position is wrong\n");
	}
	FUNC13(hsw, stream, position);

	/* let alsa know we have play a period */
	FUNC7(substream);
	return pos;
}