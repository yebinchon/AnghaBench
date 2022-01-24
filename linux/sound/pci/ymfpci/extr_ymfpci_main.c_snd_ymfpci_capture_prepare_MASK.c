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
typedef  int u32 ;
struct snd_ymfpci_pcm {int buffer_size; int shift; int capture_bank_number; scalar_t__ last_pos; scalar_t__ period_pos; int /*<<< orphan*/  period_size; } ;
struct snd_ymfpci_capture_bank {scalar_t__ num_of_loops; scalar_t__ start; void* loop_end; void* base; } ;
struct snd_ymfpci {struct snd_ymfpci_capture_bank*** bank_capture; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int buffer_size; int rate; int channels; int dma_addr; int /*<<< orphan*/  format; int /*<<< orphan*/  period_size; struct snd_ymfpci_pcm* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  YDSXGR_ADCFORMAT ; 
 int /*<<< orphan*/  YDSXGR_ADCSLOTSR ; 
 int /*<<< orphan*/  YDSXGR_RECFORMAT ; 
 int /*<<< orphan*/  YDSXGR_RECSLOTSR ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct snd_ymfpci* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ymfpci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_ymfpci *chip = FUNC2(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_ymfpci_pcm *ypcm = runtime->private_data;
	struct snd_ymfpci_capture_bank * bank;
	int nbank;
	u32 rate, format;

	ypcm->period_size = runtime->period_size;
	ypcm->buffer_size = runtime->buffer_size;
	ypcm->period_pos = 0;
	ypcm->last_pos = 0;
	ypcm->shift = 0;
	rate = ((48000 * 4096) / runtime->rate) - 1;
	format = 0;
	if (runtime->channels == 2) {
		format |= 2;
		ypcm->shift++;
	}
	if (FUNC1(runtime->format) == 8)
		format |= 1;
	else
		ypcm->shift++;
	switch (ypcm->capture_bank_number) {
	case 0:
		FUNC3(chip, YDSXGR_RECFORMAT, format);
		FUNC3(chip, YDSXGR_RECSLOTSR, rate);
		break;
	case 1:
		FUNC3(chip, YDSXGR_ADCFORMAT, format);
		FUNC3(chip, YDSXGR_ADCSLOTSR, rate);
		break;
	}
	for (nbank = 0; nbank < 2; nbank++) {
		bank = chip->bank_capture[ypcm->capture_bank_number][nbank];
		bank->base = FUNC0(runtime->dma_addr);
		bank->loop_end = FUNC0(ypcm->buffer_size << ypcm->shift);
		bank->start = 0;
		bank->num_of_loops = 0;
	}
	return 0;
}