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
typedef  int /*<<< orphan*/  u16 ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ dma_addr; struct snd_card_asihpi_pcm* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_card_asihpi_pcm {unsigned int bytes_per_sec; int /*<<< orphan*/  period_bytes; int /*<<< orphan*/  buffer_bytes; scalar_t__ hpi_buffer_attached; int /*<<< orphan*/  h_stream; int /*<<< orphan*/  format; } ;
struct snd_card_asihpi {scalar_t__ can_dma; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC7 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC10 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct snd_card_asihpi* FUNC15 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC18(struct snd_pcm_substream *substream,
					 struct snd_pcm_hw_params *params)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_card_asihpi_pcm *dpcm = runtime->private_data;
	struct snd_card_asihpi *card = FUNC15(substream);
	int err;
	u16 format;
	int width;
	unsigned int bytes_per_sec;

	FUNC11(substream, params);
	err = FUNC14(substream, FUNC6(params));
	if (err < 0)
		return err;
	err = FUNC12(FUNC8(params), &format);
	if (err)
		return err;

	FUNC1(FUNC0(&dpcm->format,
			FUNC7(params),
			format, FUNC10(params), 0, 0));

	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
		if (FUNC2(dpcm->h_stream) != 0)
			return -EINVAL;

		if (FUNC3(
			dpcm->h_stream, &dpcm->format) != 0)
			return -EINVAL;
	}

	dpcm->hpi_buffer_attached = 0;
	if (card->can_dma) {
		err = FUNC5(dpcm->h_stream,
			FUNC6(params),  runtime->dma_addr);
		if (err == 0) {
			FUNC17(
				"stream_host_buffer_attach success %u %lu\n",
				FUNC6(params),
				(unsigned long)runtime->dma_addr);
		} else {
			FUNC16("stream_host_buffer_attach error %d\n",
					err);
			return -ENOMEM;
		}

		err = FUNC4(dpcm->h_stream, NULL,
				&dpcm->hpi_buffer_attached, NULL, NULL, NULL);
	}
	bytes_per_sec = FUNC10(params) * FUNC7(params);
	width = FUNC13(FUNC8(params));
	bytes_per_sec *= width;
	bytes_per_sec /= 8;
	if (width < 0 || bytes_per_sec == 0)
		return -EINVAL;

	dpcm->bytes_per_sec = bytes_per_sec;
	dpcm->buffer_bytes = FUNC6(params);
	dpcm->period_bytes = FUNC9(params);

	return 0;
}