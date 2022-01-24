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
struct snd_pcm_runtime {int channels; scalar_t__ buffer_size; scalar_t__ period_size; unsigned int dma_addr; int /*<<< orphan*/  rate; int /*<<< orphan*/  format; } ;
struct cs4281_dma {int valDMR; int valDCR; scalar_t__ regDBA; scalar_t__ regDBC; int left_slot; int right_slot; scalar_t__ regFCR; int valFCR; scalar_t__ regFSIC; int /*<<< orphan*/  fifo_offset; scalar_t__ frag; } ;
struct cs4281 {int src_left_play_slot; int src_right_play_slot; int src_left_rec_slot; int src_right_rec_slot; TYPE_1__* dma; } ;
struct TYPE_2__ {int valDMR; } ;

/* Variables and functions */
 scalar_t__ BA0_ADCSR ; 
 scalar_t__ BA0_DACSR ; 
 int BA0_DCR_HTCIE ; 
 int BA0_DCR_MSK ; 
 int BA0_DCR_TCIE ; 
 int BA0_DMR_AUTO ; 
 int BA0_DMR_BEND ; 
 int BA0_DMR_MONO ; 
 int BA0_DMR_SIZE20 ; 
 int BA0_DMR_SIZE8 ; 
 int BA0_DMR_SWAPC ; 
 int BA0_DMR_TR_READ ; 
 int BA0_DMR_TR_WRITE ; 
 int BA0_DMR_TYPE_SINGLE ; 
 int BA0_DMR_USIGN ; 
 scalar_t__ BA0_FCR0 ; 
 unsigned int BA0_FCR_FEN ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int BA0_FCR_PSH ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ BA0_SRCSA ; 
 int /*<<< orphan*/  CS4281_FIFO_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 unsigned int FUNC5 (struct cs4281*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct cs4281*,scalar_t__,unsigned int) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct cs4281 *chip, struct cs4281_dma *dma,
			    struct snd_pcm_runtime *runtime,
			    int capture, int src)
{
	int rec_mono;

	dma->valDMR = BA0_DMR_TYPE_SINGLE | BA0_DMR_AUTO |
		      (capture ? BA0_DMR_TR_WRITE : BA0_DMR_TR_READ);
	if (runtime->channels == 1)
		dma->valDMR |= BA0_DMR_MONO;
	if (FUNC9(runtime->format) > 0)
		dma->valDMR |= BA0_DMR_USIGN;
	if (FUNC8(runtime->format) > 0)
		dma->valDMR |= BA0_DMR_BEND;
	switch (FUNC10(runtime->format)) {
	case 8: dma->valDMR |= BA0_DMR_SIZE8;
		if (runtime->channels == 1)
			dma->valDMR |= BA0_DMR_SWAPC;
		break;
	case 32: dma->valDMR |= BA0_DMR_SIZE20; break;
	}
	dma->frag = 0;	/* for workaround */
	dma->valDCR = BA0_DCR_TCIE | BA0_DCR_MSK;
	if (runtime->buffer_size != runtime->period_size)
		dma->valDCR |= BA0_DCR_HTCIE;
	/* Initialize DMA */
	FUNC6(chip, dma->regDBA, runtime->dma_addr);
	FUNC6(chip, dma->regDBC, runtime->buffer_size - 1);
	rec_mono = (chip->dma[1].valDMR & BA0_DMR_MONO) == BA0_DMR_MONO;
	FUNC6(chip, BA0_SRCSA, (chip->src_left_play_slot << 0) |
					    (chip->src_right_play_slot << 8) |
					    (chip->src_left_rec_slot << 16) |
					    ((rec_mono ? 31 : chip->src_right_rec_slot) << 24));
	if (!src)
		goto __skip_src;
	if (!capture) {
		if (dma->left_slot == chip->src_left_play_slot) {
			unsigned int val = FUNC7(runtime->rate, NULL);
			FUNC4(dma->right_slot != chip->src_right_play_slot);
			FUNC6(chip, BA0_DACSR, val);
		}
	} else {
		if (dma->left_slot == chip->src_left_rec_slot) {
			unsigned int val = FUNC7(runtime->rate, NULL);
			FUNC4(dma->right_slot != chip->src_right_rec_slot);
			FUNC6(chip, BA0_ADCSR, val);
		}
	}
      __skip_src:
	/* Deactivate wave playback FIFO before changing slot assignments */
	if (dma->regFCR == BA0_FCR0)
		FUNC6(chip, dma->regFCR, FUNC5(chip, dma->regFCR) & ~BA0_FCR_FEN);
	/* Initialize FIFO */
	dma->valFCR = FUNC0(dma->left_slot) |
		      FUNC2(capture && (dma->valDMR & BA0_DMR_MONO) ? 31 : dma->right_slot) |
		      FUNC3(CS4281_FIFO_SIZE) |
		      FUNC1(dma->fifo_offset);
	FUNC6(chip, dma->regFCR, dma->valFCR | (capture ? BA0_FCR_PSH : 0));
	/* Activate FIFO again for FM playback */
	if (dma->regFCR == BA0_FCR0)
		FUNC6(chip, dma->regFCR, dma->valFCR | BA0_FCR_FEN);
	/* Clear FIFO Status and Interrupt Control Register */
	FUNC6(chip, dma->regFSIC, 0);
}