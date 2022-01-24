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
typedef  int u32 ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_intelhad {int bd_head; int pcmbuf_filled; int period_bytes; int num_bds; } ;
struct TYPE_2__ {int dma_addr; int periods; int /*<<< orphan*/  no_period_wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int AUD_BUF_INTR_EN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int AUD_BUF_VALID ; 
 int /*<<< orphan*/  FUNC2 (struct snd_intelhad*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct snd_pcm_substream *substream,
			struct snd_intelhad *intelhaddata)
{
	int idx = intelhaddata->bd_head;
	int ofs = intelhaddata->pcmbuf_filled * intelhaddata->period_bytes;
	u32 addr = substream->runtime->dma_addr + ofs;

	addr |= AUD_BUF_VALID;
	if (!substream->runtime->no_period_wakeup)
		addr |= AUD_BUF_INTR_EN;
	FUNC2(intelhaddata, FUNC0(idx), addr);
	FUNC2(intelhaddata, FUNC1(idx),
			   intelhaddata->period_bytes);

	/* advance the indices to the next */
	intelhaddata->bd_head++;
	intelhaddata->bd_head %= intelhaddata->num_bds;
	intelhaddata->pcmbuf_filled++;
	intelhaddata->pcmbuf_filled %= substream->runtime->periods;
}