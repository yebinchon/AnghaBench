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
struct echoaudio {int professional_spdif; int non_audio_spdif; int bad_board; int phantom_power; int /*<<< orphan*/  digital_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIGITAL_MODE_SPDIF_RCA ; 
 int FUNC0 (struct echoaudio*) ; 

__attribute__((used)) static int FUNC1(struct echoaudio *chip)
{
	chip->digital_mode = DIGITAL_MODE_SPDIF_RCA;
	chip->professional_spdif = false;
	chip->non_audio_spdif = false;
	chip->bad_board = false;
	chip->phantom_power = false;
	return FUNC0(chip);
}