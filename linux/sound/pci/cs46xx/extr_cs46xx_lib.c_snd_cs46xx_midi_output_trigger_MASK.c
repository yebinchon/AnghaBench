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
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_cs46xx {int midcr; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_2__ {struct snd_cs46xx* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA0_MIDCR ; 
 int /*<<< orphan*/  BA0_MIDSR ; 
 int /*<<< orphan*/  BA0_MIDWP ; 
 int MIDCR_TIE ; 
 int MIDSR_TBF ; 
 int FUNC0 (struct snd_cs46xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs46xx*,int /*<<< orphan*/ ,unsigned char) ; 
 int FUNC2 (struct snd_rawmidi_substream*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct snd_rawmidi_substream *substream, int up)
{
	unsigned long flags;
	struct snd_cs46xx *chip = substream->rmidi->private_data;
	unsigned char byte;

	FUNC3(&chip->reg_lock, flags);
	if (up) {
		if ((chip->midcr & MIDCR_TIE) == 0) {
			chip->midcr |= MIDCR_TIE;
			/* fill UART FIFO buffer at first, and turn Tx interrupts only if necessary */
			while ((chip->midcr & MIDCR_TIE) &&
			       (FUNC0(chip, BA0_MIDSR) & MIDSR_TBF) == 0) {
				if (FUNC2(substream, &byte, 1) != 1) {
					chip->midcr &= ~MIDCR_TIE;
				} else {
					FUNC1(chip, BA0_MIDWP, byte);
				}
			}
			FUNC1(chip, BA0_MIDCR, chip->midcr);
		}
	} else {
		if (chip->midcr & MIDCR_TIE) {
			chip->midcr &= ~MIDCR_TIE;
			FUNC1(chip, BA0_MIDCR, chip->midcr);
		}
	}
	FUNC4(&chip->reg_lock, flags);
}