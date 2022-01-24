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
struct snd_ymfpci_pcm {size_t capture_bank_number; int shift; int last_pos; int buffer_size; int period_pos; int period_size; scalar_t__ running; struct snd_ymfpci* chip; } ;
struct snd_ymfpci {size_t active_bank; int /*<<< orphan*/  reg_lock; TYPE_1__*** bank_capture; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_ymfpci_pcm* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_ymfpci_pcm *ypcm = runtime->private_data;
	struct snd_ymfpci *chip = ypcm->chip;
	u32 pos, delta;
	
	FUNC2(&chip->reg_lock);
	if (ypcm->running) {
		pos = FUNC0(chip->bank_capture[ypcm->capture_bank_number][chip->active_bank]->start) >> ypcm->shift;
		if (pos < ypcm->last_pos)
			delta = pos + (ypcm->buffer_size - ypcm->last_pos);
		else
			delta = pos - ypcm->last_pos;
		ypcm->period_pos += delta;
		ypcm->last_pos = pos;
		if (ypcm->period_pos >= ypcm->period_size) {
			ypcm->period_pos %= ypcm->period_size;
			/*
			dev_dbg(chip->card->dev,
			       "done - active_bank = 0x%x, start = 0x%x\n",
			       chip->active_bank,
			       voice->bank[chip->active_bank].start);
			*/
			FUNC3(&chip->reg_lock);
			FUNC1(substream);
			FUNC2(&chip->reg_lock);
		}
	}
	FUNC3(&chip->reg_lock);
}