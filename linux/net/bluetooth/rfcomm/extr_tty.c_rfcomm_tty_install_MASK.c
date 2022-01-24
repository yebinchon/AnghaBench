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
struct tty_struct {struct rfcomm_dev* driver_data; int /*<<< orphan*/  index; } ;
struct tty_driver {int dummy; } ;
struct rfcomm_dlc {int dummy; } ;
struct rfcomm_dev {int /*<<< orphan*/  port; int /*<<< orphan*/  status; int /*<<< orphan*/  flags; struct rfcomm_dlc* dlc; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  RFCOMM_RELEASE_ONHUP ; 
 int /*<<< orphan*/  RFCOMM_TTY_ATTACHED ; 
 int /*<<< orphan*/  RFCOMM_TTY_OWNED ; 
 struct rfcomm_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct tty_driver*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct tty_driver *driver, struct tty_struct *tty)
{
	struct rfcomm_dev *dev;
	struct rfcomm_dlc *dlc;
	int err;

	dev = FUNC0(tty->index);
	if (!dev)
		return -ENODEV;

	dlc = dev->dlc;

	/* Attach TTY and open DLC */
	FUNC1(dlc);
	tty->driver_data = dev;
	FUNC2(dlc);
	FUNC4(RFCOMM_TTY_ATTACHED, &dev->flags);

	/* install the tty_port */
	err = FUNC6(&dev->port, driver, tty);
	if (err) {
		FUNC3(tty);
		return err;
	}

	/* take over the tty_port reference if the port was created with the
	 * flag RFCOMM_RELEASE_ONHUP. This will force the release of the port
	 * when the last process closes the tty. The behaviour is expected by
	 * userspace.
	 */
	if (FUNC5(RFCOMM_RELEASE_ONHUP, &dev->flags)) {
		FUNC4(RFCOMM_TTY_OWNED, &dev->status);
		FUNC7(&dev->port);
	}

	return 0;
}