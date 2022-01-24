#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct led_classdev {int /*<<< orphan*/  trigger; } ;
struct hci_basic_led_trigger {TYPE_1__* hdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_UP ; 
 int /*<<< orphan*/  LED_FULL ; 
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hci_basic_led_trigger* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct led_classdev *led_cdev)
{
	struct hci_basic_led_trigger *htrig;
	bool powered;

	htrig = FUNC2(led_cdev->trigger);
	powered = FUNC1(HCI_UP, &htrig->hdev->flags);

	FUNC0(led_cdev->trigger, powered ? LED_FULL : LED_OFF);

	return 0;
}