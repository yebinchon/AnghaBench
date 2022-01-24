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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct cs5535audio_dma_desc {void* ctlreserved; void* size; void* addr; } ;
struct TYPE_6__ {scalar_t__ addr; int /*<<< orphan*/ * area; } ;
struct cs5535audio_dma {unsigned int period_bytes; unsigned int periods; TYPE_2__* ops; struct snd_pcm_substream* substream; TYPE_3__ desc_buf; } ;
struct cs5535audio {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  pci; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* setup_prd ) (struct cs5535audio*,scalar_t__) ;int /*<<< orphan*/  (* disable_dma ) (struct cs5535audio*) ;} ;
struct TYPE_4__ {scalar_t__ dma_addr; } ;

/* Variables and functions */
 scalar_t__ CS5535AUDIO_DESC_LIST_SIZE ; 
 unsigned int CS5535AUDIO_MAX_DESCRIPTORS ; 
 int ENOMEM ; 
 unsigned int PRD_EOP ; 
 unsigned int PRD_JMP ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 void* FUNC0 (unsigned int) ; 
 void* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cs5535audio*) ; 
 int /*<<< orphan*/  FUNC7 (struct cs5535audio*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct cs5535audio *cs5535au,
					 struct cs5535audio_dma *dma,
					 struct snd_pcm_substream *substream,
					 unsigned int periods,
					 unsigned int period_bytes)
{
	unsigned int i;
	u32 addr, desc_addr, jmpprd_addr;
	struct cs5535audio_dma_desc *lastdesc;

	if (periods > CS5535AUDIO_MAX_DESCRIPTORS)
		return -ENOMEM;

	if (dma->desc_buf.area == NULL) {
		if (FUNC2(SNDRV_DMA_TYPE_DEV,
					FUNC3(cs5535au->pci),
					CS5535AUDIO_DESC_LIST_SIZE+1,
					&dma->desc_buf) < 0)
			return -ENOMEM;
		dma->period_bytes = dma->periods = 0;
	}

	if (dma->periods == periods && dma->period_bytes == period_bytes)
		return 0;

	/* the u32 cast is okay because in snd*create we successfully told
   	   pci alloc that we're only 32 bit capable so the uppper will be 0 */
	addr = (u32) substream->runtime->dma_addr;
	desc_addr = (u32) dma->desc_buf.addr;
	for (i = 0; i < periods; i++) {
		struct cs5535audio_dma_desc *desc =
			&((struct cs5535audio_dma_desc *) dma->desc_buf.area)[i];
		desc->addr = FUNC1(addr);
		desc->size = FUNC0(period_bytes);
		desc->ctlreserved = FUNC0(PRD_EOP);
		desc_addr += sizeof(struct cs5535audio_dma_desc);
		addr += period_bytes;
	}
	/* we reserved one dummy descriptor at the end to do the PRD jump */
	lastdesc = &((struct cs5535audio_dma_desc *) dma->desc_buf.area)[periods];
	lastdesc->addr = FUNC1((u32) dma->desc_buf.addr);
	lastdesc->size = 0;
	lastdesc->ctlreserved = FUNC0(PRD_JMP);
	jmpprd_addr = (u32)dma->desc_buf.addr +
		sizeof(struct cs5535audio_dma_desc) * periods;

	dma->substream = substream;
	dma->period_bytes = period_bytes;
	dma->periods = periods;
	FUNC4(&cs5535au->reg_lock);
	dma->ops->disable_dma(cs5535au);
	dma->ops->setup_prd(cs5535au, jmpprd_addr);
	FUNC5(&cs5535au->reg_lock);
	return 0;
}