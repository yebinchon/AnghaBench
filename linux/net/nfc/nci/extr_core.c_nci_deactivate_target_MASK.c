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
struct nfc_target {int dummy; } ;
struct nfc_dev {int dummy; } ;
struct nci_dev {int /*<<< orphan*/  state; scalar_t__ target_active_prot; } ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_DEACTIVATE_TYPE_IDLE_MODE ; 
 int /*<<< orphan*/  NCI_DEACTIVATE_TYPE_SLEEP_MODE ; 
 scalar_t__ NCI_POLL_ACTIVE ; 
 int /*<<< orphan*/  NCI_RF_DEACTIVATE_TIMEOUT ; 
#define  NFC_TARGET_MODE_SLEEP 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nci_rf_deactivate_req ; 
 struct nci_dev* FUNC3 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct nfc_dev *nfc_dev,
				  struct nfc_target *target,
				  __u8 mode)
{
	struct nci_dev *ndev = FUNC3(nfc_dev);
	u8 nci_mode = NCI_DEACTIVATE_TYPE_IDLE_MODE;

	FUNC4("entry\n");

	if (!ndev->target_active_prot) {
		FUNC5("unable to deactivate target, no active target\n");
		return;
	}

	ndev->target_active_prot = 0;

	switch (mode) {
	case NFC_TARGET_MODE_SLEEP:
		nci_mode = NCI_DEACTIVATE_TYPE_SLEEP_MODE;
		break;
	}

	if (FUNC0(&ndev->state) == NCI_POLL_ACTIVE) {
		FUNC2(ndev, nci_rf_deactivate_req, nci_mode,
			    FUNC1(NCI_RF_DEACTIVATE_TIMEOUT));
	}
}