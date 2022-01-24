#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  lock; TYPE_4__* dma_wt; TYPE_1__* pcm_vol; TYPE_7__* card; TYPE_4__* dma_adb; } ;
typedef  TYPE_3__ vortex_t ;
struct snd_pcm_substream {size_t number; TYPE_2__* runtime; int /*<<< orphan*/  pcm; int /*<<< orphan*/  stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_14__ {int dma; int type; struct snd_pcm_substream* substream; int /*<<< orphan*/  dir; int /*<<< orphan*/  nr_ch; } ;
typedef  TYPE_4__ stream_t ;
struct TYPE_15__ {int /*<<< orphan*/  dev; } ;
struct TYPE_12__ {TYPE_4__* private_data; } ;
struct TYPE_11__ {int active; int /*<<< orphan*/  kctl; } ;

/* Variables and functions */
 int VORTEX_PCM_ADB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int VORTEX_PCM_WT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_hw_params*) ; 
 int FUNC6 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct snd_pcm_substream *substream,
			 struct snd_pcm_hw_params *hw_params)
{
	vortex_t *chip = FUNC7(substream);
	stream_t *stream = (stream_t *) (substream->runtime->private_data);
	int err;

	// Alloc buffer memory.
	err =
	    FUNC6(substream, FUNC2(hw_params));
	if (err < 0) {
		FUNC1(chip->card->dev, "Vortex: pcm page alloc failed!\n");
		return err;
	}
	/*
	   pr_info( "Vortex: periods %d, period_bytes %d, channels = %d\n", params_periods(hw_params),
	   params_period_bytes(hw_params), params_channels(hw_params));
	 */
	FUNC8(&chip->lock);
	// Make audio routes and config buffer DMA.
	if (FUNC0(substream->pcm) != VORTEX_PCM_WT) {
		int dma, type = FUNC0(substream->pcm);
		/* Dealloc any routes. */
		if (stream != NULL)
			FUNC10(chip, stream->dma,
					      stream->nr_ch, stream->dir,
					      stream->type,
					      substream->number);
		/* Alloc routes. */
		dma =
		    FUNC10(chip, -1,
					  FUNC3(hw_params),
					  substream->stream, type,
					  substream->number);
		if (dma < 0) {
			FUNC9(&chip->lock);
			return dma;
		}
		stream = substream->runtime->private_data = &chip->dma_adb[dma];
		stream->substream = substream;
		/* Setup Buffers. */
		FUNC11(chip, dma,
					 FUNC4(hw_params),
					 FUNC5(hw_params));
		if (FUNC0(substream->pcm) == VORTEX_PCM_ADB) {
			chip->pcm_vol[substream->number].active = 1;
			FUNC12(chip->card,
				chip->pcm_vol[substream->number].kctl, 1);
		}
	}
#ifndef CHIP_AU8810
	else {
		/* if (stream != NULL)
		   vortex_wt_allocroute(chip, substream->number, 0); */
		FUNC13(chip, substream->number,
				     FUNC3(hw_params));
		stream = substream->runtime->private_data =
		    &chip->dma_wt[substream->number];
		stream->dma = substream->number;
		stream->substream = substream;
		FUNC14(chip, substream->number,
					FUNC4(hw_params),
					FUNC5(hw_params));
	}
#endif
	FUNC9(&chip->lock);
	return 0;
}