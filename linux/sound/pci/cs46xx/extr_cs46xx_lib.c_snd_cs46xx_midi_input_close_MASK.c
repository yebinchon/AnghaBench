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
struct snd_cs46xx {int midcr; int uartm; int /*<<< orphan*/  (* active_ctrl ) (struct snd_cs46xx*,int) ;int /*<<< orphan*/  reg_lock; int /*<<< orphan*/ * midi_input; } ;
struct TYPE_2__ {struct snd_cs46xx* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA0_MIDCR ; 
 int CS46XX_MODE_INPUT ; 
 int CS46XX_MODE_OUTPUT ; 
 int MIDCR_RIE ; 
 int MIDCR_RXE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_cs46xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs46xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_cs46xx*,int) ; 

__attribute__((used)) static int FUNC5(struct snd_rawmidi_substream *substream)
{
	struct snd_cs46xx *chip = substream->rmidi->private_data;

	FUNC2(&chip->reg_lock);
	chip->midcr &= ~(MIDCR_RXE | MIDCR_RIE);
	chip->midi_input = NULL;
	if (!(chip->uartm & CS46XX_MODE_OUTPUT)) {
		FUNC0(chip);
	} else {
		FUNC1(chip, BA0_MIDCR, chip->midcr);
	}
	chip->uartm &= ~CS46XX_MODE_INPUT;
	FUNC3(&chip->reg_lock);
	chip->active_ctrl(chip, -1);
	return 0;
}