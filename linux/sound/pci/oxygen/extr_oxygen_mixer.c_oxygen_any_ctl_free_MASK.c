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
struct snd_kcontrol {struct oxygen* private_data; } ;
struct oxygen {int /*<<< orphan*/ ** controls; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC1(struct snd_kcontrol *ctl)
{
	struct oxygen *chip = ctl->private_data;
	unsigned int i;

	/* I'm too lazy to write a function for each control :-) */
	for (i = 0; i < FUNC0(chip->controls); ++i)
		chip->controls[i] = NULL;
}