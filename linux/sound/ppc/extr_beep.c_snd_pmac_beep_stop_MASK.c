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
struct snd_pmac {struct pmac_beep* beep; } ;
struct pmac_beep {scalar_t__ running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pmac*) ; 

void FUNC1(struct snd_pmac *chip)
{
	struct pmac_beep *beep = chip->beep;
	if (beep && beep->running) {
		beep->running = 0;
		FUNC0(chip);
	}
}