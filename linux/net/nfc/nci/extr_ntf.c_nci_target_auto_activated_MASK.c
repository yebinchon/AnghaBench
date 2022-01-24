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
struct nfc_target {int /*<<< orphan*/  logical_idx; } ;
struct nci_rf_intf_activated_ntf {int /*<<< orphan*/  rf_discovery_id; int /*<<< orphan*/  rf_tech_specific_params; int /*<<< orphan*/  activation_rf_tech_and_mode; int /*<<< orphan*/  rf_protocol; } ;
struct nci_dev {size_t n_targets; struct nfc_target* targets; int /*<<< orphan*/  nfc_dev; } ;

/* Variables and functions */
 int FUNC0 (struct nci_dev*,struct nfc_target*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nfc_target*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC3(struct nci_dev *ndev,
				      struct nci_rf_intf_activated_ntf *ntf)
{
	struct nfc_target *target;
	int rc;

	target = &ndev->targets[ndev->n_targets];

	rc = FUNC0(ndev, target, ntf->rf_protocol,
				  ntf->activation_rf_tech_and_mode,
				  &ntf->rf_tech_specific_params);
	if (rc)
		return;

	target->logical_idx = ntf->rf_discovery_id;
	ndev->n_targets++;

	FUNC2("logical idx %d, n_targets %d\n",
		 target->logical_idx, ndev->n_targets);

	FUNC1(ndev->nfc_dev, ndev->targets, ndev->n_targets);
}