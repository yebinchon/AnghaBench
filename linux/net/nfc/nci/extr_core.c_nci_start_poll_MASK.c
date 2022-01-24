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
struct nfc_dev {int dummy; } ;
struct nci_rf_discover_param {int im_protocols; int tm_protocols; } ;
struct nci_dev {int poll_prots; int /*<<< orphan*/  state; scalar_t__ target_active_prot; } ;
typedef  int __u32 ;

/* Variables and functions */
 int EBUSY ; 
 unsigned long NCI_DEACTIVATE_TYPE_IDLE_MODE ; 
 scalar_t__ NCI_DISCOVERY ; 
 scalar_t__ NCI_POLL_ACTIVE ; 
 int /*<<< orphan*/  NCI_RF_DEACTIVATE_TIMEOUT ; 
 int /*<<< orphan*/  NCI_RF_DISC_TIMEOUT ; 
 scalar_t__ NCI_W4_ALL_DISCOVERIES ; 
 scalar_t__ NCI_W4_HOST_SELECT ; 
 int NFC_PROTO_NFC_DEP_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nci_dev*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nci_rf_deactivate_req ; 
 int /*<<< orphan*/  nci_rf_discover_req ; 
 int FUNC3 (struct nfc_dev*) ; 
 int FUNC4 (struct nfc_dev*) ; 
 struct nci_dev* FUNC5 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct nfc_dev *nfc_dev,
			  __u32 im_protocols, __u32 tm_protocols)
{
	struct nci_dev *ndev = FUNC5(nfc_dev);
	struct nci_rf_discover_param param;
	int rc;

	if ((FUNC0(&ndev->state) == NCI_DISCOVERY) ||
	    (FUNC0(&ndev->state) == NCI_W4_ALL_DISCOVERIES)) {
		FUNC7("unable to start poll, since poll is already active\n");
		return -EBUSY;
	}

	if (ndev->target_active_prot) {
		FUNC7("there is an active target\n");
		return -EBUSY;
	}

	if ((FUNC0(&ndev->state) == NCI_W4_HOST_SELECT) ||
	    (FUNC0(&ndev->state) == NCI_POLL_ACTIVE)) {
		FUNC6("target active or w4 select, implicitly deactivate\n");

		rc = FUNC2(ndev, nci_rf_deactivate_req,
				 NCI_DEACTIVATE_TYPE_IDLE_MODE,
				 FUNC1(NCI_RF_DEACTIVATE_TIMEOUT));
		if (rc)
			return -EBUSY;
	}

	if ((im_protocols | tm_protocols) & NFC_PROTO_NFC_DEP_MASK) {
		rc = FUNC4(nfc_dev);
		if (rc) {
			FUNC7("failed to set local general bytes\n");
			return rc;
		}
	}

	if (tm_protocols & NFC_PROTO_NFC_DEP_MASK) {
		rc = FUNC3(nfc_dev);
		if (rc)
			FUNC7("failed to set listen parameters\n");
	}

	param.im_protocols = im_protocols;
	param.tm_protocols = tm_protocols;
	rc = FUNC2(ndev, nci_rf_discover_req, (unsigned long)&param,
			 FUNC1(NCI_RF_DISC_TIMEOUT));

	if (!rc)
		ndev->poll_prots = im_protocols;

	return rc;
}