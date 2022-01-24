#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  lock; TYPE_2__* card; } ;
typedef  TYPE_3__ vortex_t ;
struct snd_pcm_substream {int /*<<< orphan*/  pcm; TYPE_1__* runtime; } ;
struct TYPE_18__ {int dma; int fifo_enabled; } ;
typedef  TYPE_4__ stream_t ;
struct TYPE_16__ {int /*<<< orphan*/  dev; } ;
struct TYPE_15__ {scalar_t__ private_data; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 131 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 130 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VORTEX_PCM_WT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_3__* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int) ; 

__attribute__((used)) static int FUNC14(struct snd_pcm_substream *substream, int cmd)
{
	vortex_t *chip = FUNC2(substream);
	stream_t *stream = (stream_t *) substream->runtime->private_data;
	int dma = stream->dma;

	FUNC3(&chip->lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		// do something to start the PCM engine
		//printk(KERN_INFO "vortex: start %d\n", dma);
		stream->fifo_enabled = 1;
		if (FUNC0(substream->pcm) != VORTEX_PCM_WT) {
			FUNC6(chip, dma);
			FUNC8(chip, dma);
		}
#ifndef CHIP_AU8810
		else {
			FUNC1(chip->card->dev, "wt start %d\n", dma);
			FUNC12(chip, dma);
		}
#endif
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		// do something to stop the PCM engine
		//printk(KERN_INFO "vortex: stop %d\n", dma);
		stream->fifo_enabled = 0;
		if (FUNC0(substream->pcm) != VORTEX_PCM_WT)
			FUNC9(chip, dma);
#ifndef CHIP_AU8810
		else {
			FUNC1(chip->card->dev, "wt stop %d\n", dma);
			FUNC13(chip, dma);
		}
#endif
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		//printk(KERN_INFO "vortex: pause %d\n", dma);
		if (FUNC0(substream->pcm) != VORTEX_PCM_WT)
			FUNC5(chip, dma);
#ifndef CHIP_AU8810
		else
			FUNC10(chip, dma);
#endif
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		//printk(KERN_INFO "vortex: resume %d\n", dma);
		if (FUNC0(substream->pcm) != VORTEX_PCM_WT)
			FUNC7(chip, dma);
#ifndef CHIP_AU8810
		else
			FUNC11(chip, dma);
#endif
		break;
	default:
		FUNC4(&chip->lock);
		return -EINVAL;
	}
	FUNC4(&chip->lock);
	return 0;
}