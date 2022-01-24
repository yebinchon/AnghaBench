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
typedef  int /*<<< orphan*/  u8 ;
struct nfc_evt_transaction {int dummy; } ;
struct nfc_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct nfc_dev*,int /*<<< orphan*/ ,struct nfc_evt_transaction*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

int FUNC4(struct nfc_dev *dev, u8 se_idx,
		       struct nfc_evt_transaction *evt_transaction)
{
	int rc;

	FUNC3("transaction: %x\n", se_idx);

	FUNC0(&dev->dev);

	if (!evt_transaction) {
		rc = -EPROTO;
		goto out;
	}

	rc = FUNC2(dev, se_idx, evt_transaction);
out:
	FUNC1(&dev->dev);
	return rc;
}