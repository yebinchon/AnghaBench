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
struct nci_dev {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_DEACTIVATE_TYPE_IDLE_MODE ; 
 scalar_t__ NCI_DISCOVERY ; 
 int /*<<< orphan*/  NCI_RF_DEACTIVATE_TIMEOUT ; 
 scalar_t__ NCI_W4_ALL_DISCOVERIES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nci_rf_deactivate_req ; 
 struct nci_dev* FUNC3 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct nfc_dev *nfc_dev)
{
	struct nci_dev *ndev = FUNC3(nfc_dev);

	if ((FUNC0(&ndev->state) != NCI_DISCOVERY) &&
	    (FUNC0(&ndev->state) != NCI_W4_ALL_DISCOVERIES)) {
		FUNC4("unable to stop poll, since poll is not active\n");
		return;
	}

	FUNC2(ndev, nci_rf_deactivate_req, NCI_DEACTIVATE_TYPE_IDLE_MODE,
		    FUNC1(NCI_RF_DEACTIVATE_TIMEOUT));
}