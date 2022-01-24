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
struct snd_card {struct portman* private_data; } ;
struct portman {int* mode; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/ * midi_input; } ;

/* Variables and functions */
 int INT_REQ ; 
 int PORTMAN2X4_MODE_INPUT_TRIGGERED ; 
 scalar_t__ FUNC0 (struct portman*,int) ; 
 unsigned char FUNC1 (struct portman*,int) ; 
 int FUNC2 (struct portman*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *userdata)
{
	unsigned char midivalue = 0;
	struct portman *pm = ((struct snd_card*)userdata)->private_data;

	FUNC4(&pm->reg_lock);

	/* While any input data is waiting */
	while ((FUNC2(pm) & INT_REQ) == INT_REQ) {
		/* If data available on channel 0, 
		   read it and stuff it into the queue. */
		if (FUNC0(pm, 0)) {
			/* Read Midi */
			midivalue = FUNC1(pm, 0);
			/* put midi into queue... */
			if (pm->mode[0] & PORTMAN2X4_MODE_INPUT_TRIGGERED)
				FUNC3(pm->midi_input[0],
						    &midivalue, 1);

		}
		/* If data available on channel 1, 
		   read it and stuff it into the queue. */
		if (FUNC0(pm, 1)) {
			/* Read Midi */
			midivalue = FUNC1(pm, 1);
			/* put midi into queue... */
			if (pm->mode[1] & PORTMAN2X4_MODE_INPUT_TRIGGERED)
				FUNC3(pm->midi_input[1],
						    &midivalue, 1);
		}

	}

	FUNC5(&pm->reg_lock);
}