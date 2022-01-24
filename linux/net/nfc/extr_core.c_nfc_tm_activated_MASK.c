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
typedef  scalar_t__ u32 ;
struct nfc_dev {int polling; int /*<<< orphan*/  dev; int /*<<< orphan*/  rf_mode; } ;

/* Variables and functions */
 scalar_t__ NFC_PROTO_NFC_DEP_MASK ; 
 int /*<<< orphan*/  NFC_RF_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nfc_dev*,scalar_t__) ; 
 int FUNC4 (struct nfc_dev*,int /*<<< orphan*/ *,size_t) ; 

int FUNC5(struct nfc_dev *dev, u32 protocol, u8 comm_mode,
		     u8 *gb, size_t gb_len)
{
	int rc;

	FUNC0(&dev->dev);

	dev->polling = false;

	if (gb != NULL) {
		rc = FUNC4(dev, gb, gb_len);
		if (rc < 0)
			goto out;
	}

	dev->rf_mode = NFC_RF_TARGET;

	if (protocol == NFC_PROTO_NFC_DEP_MASK)
		FUNC2(dev, 0, comm_mode, NFC_RF_TARGET);

	rc = FUNC3(dev, protocol);

out:
	FUNC1(&dev->dev);

	return rc;
}