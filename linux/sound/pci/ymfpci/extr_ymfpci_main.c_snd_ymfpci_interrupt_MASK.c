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
struct snd_ymfpci_voice {int /*<<< orphan*/  (* interrupt ) (struct snd_ymfpci*,struct snd_ymfpci_voice*) ;} ;
struct snd_ymfpci {int active_bank; TYPE_1__* rawmidi; int /*<<< orphan*/  timer_ticks; scalar_t__ timer; int /*<<< orphan*/  interrupt_sleep; int /*<<< orphan*/  interrupt_sleep_count; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  voice_lock; scalar_t__* effect_substream; scalar_t__* capture_substream; struct snd_ymfpci_voice* voices; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  YDSXGR_CTRLSELECT ; 
 int /*<<< orphan*/  YDSXGR_INTFLAG ; 
 int /*<<< orphan*/  YDSXGR_MODE ; 
 int /*<<< orphan*/  YDSXGR_STATUS ; 
 int YDSXG_CAPTURE_VOICES ; 
 int YDSXG_EFFECT_VOICES ; 
 int YDSXG_PLAYBACK_VOICES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (struct snd_ymfpci*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct snd_ymfpci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_ymfpci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_ymfpci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_ymfpci*,struct snd_ymfpci_voice*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC14(int irq, void *dev_id)
{
	struct snd_ymfpci *chip = dev_id;
	u32 status, nvoice, mode;
	struct snd_ymfpci_voice *voice;

	status = FUNC6(chip, YDSXGR_STATUS);
	if (status & 0x80000000) {
		chip->active_bank = FUNC6(chip, YDSXGR_CTRLSELECT) & 1;
		FUNC10(&chip->voice_lock);
		for (nvoice = 0; nvoice < YDSXG_PLAYBACK_VOICES; nvoice++) {
			voice = &chip->voices[nvoice];
			if (voice->interrupt)
				voice->interrupt(chip, voice);
		}
		for (nvoice = 0; nvoice < YDSXG_CAPTURE_VOICES; nvoice++) {
			if (chip->capture_substream[nvoice])
				FUNC4(chip->capture_substream[nvoice]);
		}
#if 0
		for (nvoice = 0; nvoice < YDSXG_EFFECT_VOICES; nvoice++) {
			if (chip->effect_substream[nvoice])
				snd_ymfpci_pcm_effect_interrupt(chip->effect_substream[nvoice]);
		}
#endif
		FUNC11(&chip->voice_lock);
		FUNC10(&chip->reg_lock);
		FUNC8(chip, YDSXGR_STATUS, 0x80000000);
		mode = FUNC6(chip, YDSXGR_MODE) | 2;
		FUNC8(chip, YDSXGR_MODE, mode);
		FUNC11(&chip->reg_lock);

		if (FUNC0(&chip->interrupt_sleep_count)) {
			FUNC1(&chip->interrupt_sleep_count, 0);
			FUNC13(&chip->interrupt_sleep);
		}
	}

	status = FUNC7(chip, YDSXGR_INTFLAG);
	if (status & 1) {
		if (chip->timer)
			FUNC3(chip->timer, chip->timer_ticks);
	}
	FUNC9(chip, YDSXGR_INTFLAG, status);

	if (chip->rawmidi)
		FUNC2(irq, chip->rawmidi->private_data);
	return IRQ_HANDLED;
}