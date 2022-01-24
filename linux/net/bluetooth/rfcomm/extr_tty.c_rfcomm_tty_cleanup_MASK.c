#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {struct rfcomm_dev* driver_data; } ;
struct rfcomm_dev {int /*<<< orphan*/  port; TYPE_1__* dlc; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  RFCOMM_TTY_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct rfcomm_dev *dev = tty->driver_data;

	FUNC0(RFCOMM_TTY_ATTACHED, &dev->flags);

	FUNC1(dev->dlc);
	tty->driver_data = NULL;
	FUNC2(dev->dlc);

	/*
	 * purge the dlc->tx_queue to avoid circular dependencies
	 * between dev and dlc
	 */
	FUNC3(&dev->dlc->tx_queue);

	FUNC4(&dev->port);
}