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
struct rfcomm_dlc {int dummy; } ;
struct rfcomm_dev_req {int /*<<< orphan*/  channel; int /*<<< orphan*/  dev_id; } ;
struct rfcomm_dev {int id; struct rfcomm_dev* tty_dev; int /*<<< orphan*/  port; } ;
struct device {int id; struct device* tty_dev; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct rfcomm_dev*) ; 
 int FUNC3 (struct rfcomm_dev*) ; 
 struct rfcomm_dev* FUNC4 (struct rfcomm_dev_req*,struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  dev_attr_address ; 
 int /*<<< orphan*/  dev_attr_channel ; 
 int /*<<< orphan*/  FUNC5 (struct rfcomm_dev*,struct rfcomm_dev*) ; 
 scalar_t__ FUNC6 (struct rfcomm_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC8 (struct rfcomm_dev*) ; 
 int /*<<< orphan*/  rfcomm_tty_driver ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct rfcomm_dev* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct rfcomm_dev_req *req, struct rfcomm_dlc *dlc)
{
	struct rfcomm_dev *dev;
	struct device *tty;

	FUNC0("id %d channel %d", req->dev_id, req->channel);

	dev = FUNC4(req, dlc);
	if (FUNC2(dev)) {
		FUNC7(dlc);
		return FUNC3(dev);
	}

	tty = FUNC10(&dev->port, rfcomm_tty_driver,
			dev->id, NULL);
	if (FUNC2(tty)) {
		FUNC9(&dev->port);
		return FUNC3(tty);
	}

	dev->tty_dev = tty;
	FUNC8(dev);
	FUNC5(dev->tty_dev, dev);

	if (FUNC6(dev->tty_dev, &dev_attr_address) < 0)
		FUNC1("Failed to create address attribute");

	if (FUNC6(dev->tty_dev, &dev_attr_channel) < 0)
		FUNC1("Failed to create channel attribute");

	return dev->id;
}