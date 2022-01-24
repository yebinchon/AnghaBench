#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int has_fx; int /*<<< orphan*/  control_port; scalar_t__ israw; } ;
typedef  TYPE_1__ snd_wavefront_t ;

/* Variables and functions */
 scalar_t__ fx_raw ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

int
FUNC7 (snd_wavefront_t *dev)

{
	int samples_are_from_rom;

	/* IMPORTANT: assumes that snd_wavefront_detect() and/or
	   wavefront_reset_to_cleanliness() has already been called 
	*/

	if (dev->israw) {
		samples_are_from_rom = 1;
	} else {
		/* XXX is this always true ? */
		samples_are_from_rom = 0;
	}

	if (dev->israw || fx_raw) {
		if (FUNC3 (dev)) {
			return -1;
		}
	}
	/* Check for FX device, present only on Tropez+ */

	dev->has_fx = (FUNC1 (dev) == 0);

	if (dev->has_fx && fx_raw) {
		FUNC2 (dev);
	}

	FUNC6 (dev, samples_are_from_rom);
	FUNC5 (dev);
	FUNC4 (dev);

	/* Start normal operation: unreset, master interrupt enabled, no mute
	*/

	FUNC0 (0x80|0x40|0x20, dev->control_port); 

	return (0);
}