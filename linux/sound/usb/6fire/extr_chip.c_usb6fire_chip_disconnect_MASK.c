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
struct usb_interface {int dummy; } ;
struct sfire_chip {size_t regidx; int shutdown; int /*<<< orphan*/  intf_count; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** chips ; 
 int /*<<< orphan*/ ** devices ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  register_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct sfire_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct sfire_chip*) ; 
 struct sfire_chip* FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC5(struct usb_interface *intf)
{
	struct sfire_chip *chip;

	chip = FUNC4(intf);
	if (chip) { /* if !chip, fw upload has been performed */
		chip->intf_count--;
		if (!chip->intf_count) {
			FUNC0(&register_mutex);
			devices[chip->regidx] = NULL;
			chips[chip->regidx] = NULL;
			FUNC1(&register_mutex);

			chip->shutdown = true;
			FUNC2(chip);
			FUNC3(chip);
		}
	}
}