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
struct nfc_dev {int /*<<< orphan*/ * rfkill; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RFKILL_TYPE_NFC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfc_devlist_generation ; 
 int /*<<< orphan*/  nfc_devlist_mutex ; 
 int FUNC4 (struct nfc_dev*) ; 
 int FUNC5 (struct nfc_dev*) ; 
 int /*<<< orphan*/  nfc_rfkill_ops ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct nfc_dev *dev)
{
	int rc;

	FUNC6("dev_name=%s\n", FUNC0(&dev->dev));

	FUNC2(&nfc_devlist_mutex);
	nfc_devlist_generation++;
	rc = FUNC1(&dev->dev);
	FUNC3(&nfc_devlist_mutex);

	if (rc < 0)
		return rc;

	rc = FUNC5(dev);
	if (rc)
		FUNC7("Could not register llcp device\n");

	rc = FUNC4(dev);
	if (rc)
		FUNC6("The userspace won't be notified that the device %s was added\n",
			 FUNC0(&dev->dev));

	dev->rfkill = FUNC8(FUNC0(&dev->dev), &dev->dev,
				   RFKILL_TYPE_NFC, &nfc_rfkill_ops, dev);
	if (dev->rfkill) {
		if (FUNC10(dev->rfkill) < 0) {
			FUNC9(dev->rfkill);
			dev->rfkill = NULL;
		}
	}

	return 0;
}