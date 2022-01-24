#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_2__* pcm; TYPE_3__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct m3_dma {int buffer_addr; } ;
struct TYPE_6__ {int dma_addr; struct m3_dma* private_data; } ;
struct TYPE_5__ {TYPE_1__* card; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *hw_params)
{
	struct m3_dma *s = substream->runtime->private_data;
	int err;

	if ((err = FUNC2(substream, FUNC1(hw_params))) < 0)
		return err;
	/* set buffer address */
	s->buffer_addr = substream->runtime->dma_addr;
	if (s->buffer_addr & 0x3) {
		FUNC0(substream->pcm->card->dev, "oh my, not aligned\n");
		s->buffer_addr = s->buffer_addr & ~0x3;
	}
	return 0;
}