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
struct cs4281 {int uartm; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  midcr; struct snd_rawmidi_substream* midi_output; } ;
struct TYPE_2__ {struct cs4281* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA0_MIDCR ; 
 int /*<<< orphan*/  BA0_MIDCR_TXE ; 
 int CS4281_MODE_INPUT ; 
 int CS4281_MODE_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct cs4281*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs4281*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_rawmidi_substream *substream)
{
	struct cs4281 *chip = substream->rmidi->private_data;

	FUNC2(&chip->reg_lock);
	chip->uartm |= CS4281_MODE_OUTPUT;
	chip->midcr |= BA0_MIDCR_TXE;
	chip->midi_output = substream;
	if (!(chip->uartm & CS4281_MODE_INPUT)) {
		FUNC0(chip);
	} else {
		FUNC1(chip, BA0_MIDCR, chip->midcr);
	}
	FUNC3(&chip->reg_lock);
	return 0;
}