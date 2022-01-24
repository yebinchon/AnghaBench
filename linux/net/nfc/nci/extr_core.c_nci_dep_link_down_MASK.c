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
struct nfc_dev {scalar_t__ rf_mode; } ;
struct nci_dev {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_DEACTIVATE_TYPE_IDLE_MODE ; 
 scalar_t__ NCI_DISCOVERY ; 
 scalar_t__ NCI_LISTEN_ACTIVE ; 
 int /*<<< orphan*/  NCI_RF_DEACTIVATE_TIMEOUT ; 
 scalar_t__ NFC_RF_INITIATOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nci_rf_deactivate_req ; 
 struct nci_dev* FUNC4 (struct nfc_dev*) ; 
 int FUNC5 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct nfc_dev *nfc_dev)
{
	struct nci_dev *ndev = FUNC4(nfc_dev);
	int rc;

	FUNC6("entry\n");

	if (nfc_dev->rf_mode == NFC_RF_INITIATOR) {
		FUNC2(nfc_dev, NULL, NCI_DEACTIVATE_TYPE_IDLE_MODE);
	} else {
		if (FUNC0(&ndev->state) == NCI_LISTEN_ACTIVE ||
		    FUNC0(&ndev->state) == NCI_DISCOVERY) {
			FUNC3(ndev, nci_rf_deactivate_req, 0,
				FUNC1(NCI_RF_DEACTIVATE_TIMEOUT));
		}

		rc = FUNC5(nfc_dev);
		if (rc)
			FUNC7("error when signaling tm deactivation\n");
	}

	return 0;
}