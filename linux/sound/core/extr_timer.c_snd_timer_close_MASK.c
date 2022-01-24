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
struct snd_timer_instance {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  register_mutex ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct snd_timer_instance*,struct device**) ; 

int FUNC5(struct snd_timer_instance *timeri)
{
	struct device *card_dev_to_put = NULL;
	int err;

	if (FUNC3(!timeri))
		return -ENXIO;

	FUNC0(&register_mutex);
	err = FUNC4(timeri, &card_dev_to_put);
	FUNC1(&register_mutex);
	/* put_device() is called after unlock for avoiding deadlock */
	if (card_dev_to_put)
		FUNC2(card_dev_to_put);
	return err;
}