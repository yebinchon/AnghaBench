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
struct echoaudio {int professional_spdif; int digital_in_automute; int /*<<< orphan*/  digital_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIGITAL_MODE_SPDIF_RCA ; 
 int FUNC0 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC1(struct echoaudio *chip)
{
	chip->digital_mode = DIGITAL_MODE_SPDIF_RCA;
	chip->professional_spdif = false;
	chip->digital_in_automute = true;
	return FUNC0(chip);
}