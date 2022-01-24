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
struct snd_usb_audio {int /*<<< orphan*/  shutdown_wait; int /*<<< orphan*/  usage_count; int /*<<< orphan*/  shutdown; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct snd_usb_audio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct snd_usb_audio *chip)
{
	int err;

	FUNC1(&chip->usage_count);
	if (FUNC2(&chip->shutdown)) {
		err = -EIO;
		goto error;
	}
	err = FUNC3(chip);
	if (err < 0)
		goto error;
	return 0;

 error:
	if (FUNC0(&chip->usage_count))
		FUNC4(&chip->shutdown_wait);
	return err;
}