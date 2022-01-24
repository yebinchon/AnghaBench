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
struct fw_address_handler {int length; struct snd_dice* callback_data; int /*<<< orphan*/  address_callback; } ;
struct snd_dice {struct fw_address_handler notification_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  dice_notification ; 
 int FUNC0 (struct fw_address_handler*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_address_handler*) ; 
 int /*<<< orphan*/  fw_high_memory_region ; 
 int FUNC2 (struct snd_dice*) ; 
 int FUNC3 (struct snd_dice*,int) ; 

int FUNC4(struct snd_dice *dice)
{
	struct fw_address_handler *handler = &dice->notification_handler;
	int err;

	err = FUNC2(dice);
	if (err < 0)
		return err;

	/* Allocation callback in address space over host controller */
	handler->length = 4;
	handler->address_callback = dice_notification;
	handler->callback_data = dice;
	err = FUNC0(handler, &fw_high_memory_region);
	if (err < 0) {
		handler->callback_data = NULL;
		return err;
	}

	/* Register the address space */
	err = FUNC3(dice, true);
	if (err < 0) {
		FUNC1(handler);
		handler->callback_data = NULL;
	}

	return err;
}