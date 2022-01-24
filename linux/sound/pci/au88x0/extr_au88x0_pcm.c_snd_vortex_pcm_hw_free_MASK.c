#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  lock; TYPE_1__* pcm_vol; int /*<<< orphan*/  card; } ;
typedef  TYPE_3__ vortex_t ;
struct snd_pcm_substream {size_t number; TYPE_2__* runtime; int /*<<< orphan*/  pcm; } ;
struct TYPE_11__ {int /*<<< orphan*/  dma; int /*<<< orphan*/  type; int /*<<< orphan*/  dir; int /*<<< orphan*/  nr_ch; } ;
typedef  TYPE_4__ stream_t ;
struct TYPE_9__ {int /*<<< orphan*/ * private_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  kctl; scalar_t__ active; } ;

/* Variables and functions */
 scalar_t__ VORTEX_PCM_ADB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ VORTEX_PCM_WT ; 
 int FUNC1 (struct snd_pcm_substream*) ; 
 TYPE_3__* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	vortex_t *chip = FUNC2(substream);
	stream_t *stream = (stream_t *) (substream->runtime->private_data);

	FUNC3(&chip->lock);
	// Delete audio routes.
	if (FUNC0(substream->pcm) != VORTEX_PCM_WT) {
		if (stream != NULL) {
			if (FUNC0(substream->pcm) == VORTEX_PCM_ADB) {
				chip->pcm_vol[substream->number].active = 0;
				FUNC6(chip->card,
					chip->pcm_vol[substream->number].kctl,
					0);
			}
			FUNC5(chip, stream->dma,
					      stream->nr_ch, stream->dir,
					      stream->type,
					      substream->number);
		}
	}
#ifndef CHIP_AU8810
	else {
		if (stream != NULL)
			FUNC7(chip, stream->dma, 0);
	}
#endif
	substream->runtime->private_data = NULL;
	FUNC4(&chip->lock);

	return FUNC1(substream);
}