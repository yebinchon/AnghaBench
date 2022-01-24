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
typedef  scalar_t__ u32 ;
struct snd_pcm_substream {TYPE_3__* runtime; } ;
struct cs5535audio_dma {scalar_t__ buf_addr; scalar_t__ buf_bytes; TYPE_1__* ops; } ;
struct cs5535audio {TYPE_2__* card; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
struct TYPE_6__ {struct cs5535audio_dma* private_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ (* read_dma_pntr ) (struct cs5535audio*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 struct cs5535audio* FUNC2 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC3 (struct cs5535audio*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC4(struct snd_pcm_substream
							*substream)
{
	struct cs5535audio *cs5535au = FUNC2(substream);
	u32 curdma;
	struct cs5535audio_dma *dma;

	dma = substream->runtime->private_data;
	curdma = dma->ops->read_dma_pntr(cs5535au);
	if (curdma < dma->buf_addr) {
		FUNC1(cs5535au->card->dev, "curdma=%x < %x bufaddr.\n",
					curdma, dma->buf_addr);
		return 0;
	}
	curdma -= dma->buf_addr;
	if (curdma >= dma->buf_bytes) {
		FUNC1(cs5535au->card->dev, "diff=%x >= %x buf_bytes.\n",
					curdma, dma->buf_bytes);
		return 0;
	}
	return FUNC0(substream->runtime, curdma);
}