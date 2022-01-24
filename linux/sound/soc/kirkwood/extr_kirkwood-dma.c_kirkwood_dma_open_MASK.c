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
struct TYPE_2__ {unsigned long addr; } ;
struct snd_pcm_substream {scalar_t__ stream; TYPE_1__ dma_buffer; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct mbus_dram_target_info {int dummy; } ;
struct kirkwood_dma_data {int burst; scalar_t__ io; struct snd_pcm_substream* substream_rec; struct snd_pcm_substream* substream_play; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ KIRKWOOD_AUDIO_BUF_MAX ; 
 scalar_t__ KIRKWOOD_ERR_MASK ; 
 int /*<<< orphan*/  KIRKWOOD_PLAYBACK_WIN ; 
 int /*<<< orphan*/  KIRKWOOD_RECORD_WIN ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_BYTES ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,unsigned long,struct mbus_dram_target_info const*) ; 
 int /*<<< orphan*/  kirkwood_dma_irq ; 
 int /*<<< orphan*/  kirkwood_dma_snd_hw ; 
 struct kirkwood_dma_data* FUNC1 (struct snd_pcm_substream*) ; 
 struct mbus_dram_target_info* FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct kirkwood_dma_data*) ; 
 int FUNC4 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC5 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	int err;
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct kirkwood_dma_data *priv = FUNC1(substream);
	const struct mbus_dram_target_info *dram;
	unsigned long addr;

	FUNC6(substream, &kirkwood_dma_snd_hw);

	/* Ensure that all constraints linked to dma burst are fulfilled */
	err = FUNC4(runtime,
			SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
			priv->burst * 2,
			KIRKWOOD_AUDIO_BUF_MAX-1);
	if (err < 0)
		return err;

	err = FUNC5(runtime, 0,
			SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
			priv->burst);
	if (err < 0)
		return err;

	err = FUNC5(substream->runtime, 0,
			 SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
			 priv->burst);
	if (err < 0)
		return err;

	if (!priv->substream_play && !priv->substream_rec) {
		err = FUNC3(priv->irq, kirkwood_dma_irq, IRQF_SHARED,
				  "kirkwood-i2s", priv);
		if (err)
			return -EBUSY;

		/*
		 * Enable Error interrupts. We're only ack'ing them but
		 * it's useful for diagnostics
		 */
		FUNC7((unsigned int)-1, priv->io + KIRKWOOD_ERR_MASK);
	}

	dram = FUNC2();
	addr = substream->dma_buffer.addr;
	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		if (priv->substream_play)
			return -EBUSY;
		priv->substream_play = substream;
		FUNC0(priv->io,
			KIRKWOOD_PLAYBACK_WIN, addr, dram);
	} else {
		if (priv->substream_rec)
			return -EBUSY;
		priv->substream_rec = substream;
		FUNC0(priv->io,
			KIRKWOOD_RECORD_WIN, addr, dram);
	}

	return 0;
}