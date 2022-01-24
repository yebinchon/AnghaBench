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
struct snd_pcm_runtime {int channels; scalar_t__ dma_area; } ;
struct cmipci_pcm {int ch; scalar_t__ needs_silencing; TYPE_1__* substream; } ;
struct cmipci {int ctrl; int /*<<< orphan*/  reg_lock; scalar_t__ can_96k; } ;
struct TYPE_2__ {struct snd_pcm_runtime* runtime; } ;

/* Variables and functions */
 int CM_ASFC_MASK ; 
 int CM_ASFC_SHIFT ; 
 int CM_CH0FMT_MASK ; 
 int CM_CH0FMT_SHIFT ; 
 int CM_CH0_SRATE_MASK ; 
 int CM_CHEN0 ; 
 unsigned int CM_REG_CH0_FRAME2 ; 
 unsigned int CM_REG_CH1_FRAME2 ; 
 unsigned int CM_REG_CHFORMAT ; 
 unsigned int CM_REG_FUNCTRL0 ; 
 unsigned int CM_REG_FUNCTRL1 ; 
 unsigned int CM_RST_CH0 ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cmipci*,struct cmipci_pcm*,int) ; 
 unsigned int FUNC3 (struct cmipci*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct cmipci*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct cmipci *cm, struct cmipci_pcm *rec)
{
	struct snd_pcm_runtime *runtime = rec->substream->runtime;
	unsigned int reg, val;

	if (rec->needs_silencing && runtime && runtime->dma_area) {
		/* set up a small silence buffer */
		FUNC0(runtime->dma_area, 0, PAGE_SIZE);
		reg = rec->ch ? CM_REG_CH1_FRAME2 : CM_REG_CH0_FRAME2;
		val = ((PAGE_SIZE / 4) - 1) | (((PAGE_SIZE / 4) / 2 - 1) << 16);
		FUNC4(cm, reg, val);
	
		/* configure for 16 bits, 2 channels, 8 kHz */
		if (runtime->channels > 2)
			FUNC2(cm, rec, 2);
		FUNC5(&cm->reg_lock);
		val = FUNC3(cm, CM_REG_FUNCTRL1);
		val &= ~(CM_ASFC_MASK << (rec->ch * 3));
		val |= (4 << CM_ASFC_SHIFT) << (rec->ch * 3);
		FUNC4(cm, CM_REG_FUNCTRL1, val);
		val = FUNC3(cm, CM_REG_CHFORMAT);
		val &= ~(CM_CH0FMT_MASK << (rec->ch * 2));
		val |= (3 << CM_CH0FMT_SHIFT) << (rec->ch * 2);
		if (cm->can_96k)
			val &= ~(CM_CH0_SRATE_MASK << (rec->ch * 2));
		FUNC4(cm, CM_REG_CHFORMAT, val);
	
		/* start stream (we don't need interrupts) */
		cm->ctrl |= CM_CHEN0 << rec->ch;
		FUNC4(cm, CM_REG_FUNCTRL0, cm->ctrl);
		FUNC6(&cm->reg_lock);

		FUNC1(1);

		/* stop and reset stream */
		FUNC5(&cm->reg_lock);
		cm->ctrl &= ~(CM_CHEN0 << rec->ch);
		val = CM_RST_CH0 << rec->ch;
		FUNC4(cm, CM_REG_FUNCTRL0, cm->ctrl | val);
		FUNC4(cm, CM_REG_FUNCTRL0, cm->ctrl & ~val);
		FUNC6(&cm->reg_lock);

		rec->needs_silencing = 0;
	}
}