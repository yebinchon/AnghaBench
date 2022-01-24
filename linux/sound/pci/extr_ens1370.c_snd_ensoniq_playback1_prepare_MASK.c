#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int rate; int dma_addr; int /*<<< orphan*/  format; } ;
struct ensoniq {int p1_dma_size; int p1_period_size; int ctrl; int sctrl; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL ; 
 int /*<<< orphan*/  DAC1_COUNT ; 
 int /*<<< orphan*/  DAC1_FRAME ; 
 int /*<<< orphan*/  DAC1_SIZE ; 
 int FUNC0 (int) ; 
 int ES_1370_WTSRSELM ; 
 int ES_1373_BYPASS_P1 ; 
 int ES_DAC1_EN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ES_P1_INT_EN ; 
 int ES_P1_LOOP_SEL ; 
 int ES_P1_MODEM ; 
 int FUNC2 (unsigned int) ; 
 int ES_P1_PAUSE ; 
 int ES_P1_SCT_RLD ; 
 int /*<<< orphan*/  ES_PAGE_DAC ; 
 int /*<<< orphan*/  FUNC3 (struct ensoniq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEM_PAGE ; 
 int /*<<< orphan*/  SERIAL ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int* snd_ensoniq_sample_shift ; 
 int /*<<< orphan*/  FUNC6 (struct ensoniq*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct snd_pcm_substream*) ; 
 int FUNC9 (struct snd_pcm_substream*) ; 
 struct ensoniq* FUNC10 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct snd_pcm_substream *substream)
{
	struct ensoniq *ensoniq = FUNC10(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned int mode = 0;

	ensoniq->p1_dma_size = FUNC8(substream);
	ensoniq->p1_period_size = FUNC9(substream);
	if (FUNC7(runtime->format) == 16)
		mode |= 0x02;
	if (runtime->channels > 1)
		mode |= 0x01;
	FUNC11(&ensoniq->reg_lock);
	ensoniq->ctrl &= ~ES_DAC1_EN;
#ifdef CHIP1371
	/* 48k doesn't need SRC (it breaks AC3-passthru) */
	if (runtime->rate == 48000)
		ensoniq->ctrl |= ES_1373_BYPASS_P1;
	else
		ensoniq->ctrl &= ~ES_1373_BYPASS_P1;
#endif
	FUNC4(ensoniq->ctrl, FUNC3(ensoniq, CONTROL));
	FUNC4(FUNC1(ES_PAGE_DAC), FUNC3(ensoniq, MEM_PAGE));
	FUNC4(runtime->dma_addr, FUNC3(ensoniq, DAC1_FRAME));
	FUNC4((ensoniq->p1_dma_size >> 2) - 1, FUNC3(ensoniq, DAC1_SIZE));
	ensoniq->sctrl &= ~(ES_P1_LOOP_SEL | ES_P1_PAUSE | ES_P1_SCT_RLD | ES_P1_MODEM);
	ensoniq->sctrl |= ES_P1_INT_EN | FUNC2(mode);
	FUNC4(ensoniq->sctrl, FUNC3(ensoniq, SERIAL));
	FUNC4((ensoniq->p1_period_size >> snd_ensoniq_sample_shift[mode]) - 1,
	     FUNC3(ensoniq, DAC1_COUNT));
#ifdef CHIP1370
	ensoniq->ctrl &= ~ES_1370_WTSRSELM;
	switch (runtime->rate) {
	case 5512: ensoniq->ctrl |= ES_1370_WTSRSEL(0); break;
	case 11025: ensoniq->ctrl |= ES_1370_WTSRSEL(1); break;
	case 22050: ensoniq->ctrl |= ES_1370_WTSRSEL(2); break;
	case 44100: ensoniq->ctrl |= ES_1370_WTSRSEL(3); break;
	default: snd_BUG();
	}
#endif
	FUNC4(ensoniq->ctrl, FUNC3(ensoniq, CONTROL));
	FUNC12(&ensoniq->reg_lock);
#ifndef CHIP1370
	FUNC6(ensoniq, runtime->rate);
#endif
	return 0;
}