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
struct tty_struct {int /*<<< orphan*/  index; struct rfcomm_dev* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; } ;
struct rfcomm_dev {int /*<<< orphan*/  dlc; TYPE_1__ port; int /*<<< orphan*/  channel; int /*<<< orphan*/  dst; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rfcomm_dev*) ; 
 int FUNC3 (TYPE_1__*,struct tty_struct*,struct file*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty, struct file *filp)
{
	struct rfcomm_dev *dev = tty->driver_data;
	int err;

	FUNC0("tty %p id %d", tty, tty->index);

	FUNC0("dev %p dst %pMR channel %d opened %d", dev, &dev->dst,
	       dev->channel, dev->port.count);

	err = FUNC3(&dev->port, tty, filp);
	if (err)
		return err;

	/*
	 * FIXME: rfcomm should use proper flow control for
	 * received data. This hack will be unnecessary and can
	 * be removed when that's implemented
	 */
	FUNC2(dev);

	FUNC1(dev->dlc);

	return 0;
}