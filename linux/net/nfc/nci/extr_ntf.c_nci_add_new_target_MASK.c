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
struct nfc_target {scalar_t__ logical_idx; } ;
struct nci_rf_discover_ntf {scalar_t__ rf_discovery_id; int /*<<< orphan*/  rf_tech_specific_params; int /*<<< orphan*/  rf_tech_and_mode; int /*<<< orphan*/  rf_protocol; } ;
struct nci_dev {int n_targets; struct nfc_target* targets; } ;

/* Variables and functions */
 int NCI_MAX_DISCOVERED_TARGETS ; 
 int FUNC0 (struct nci_dev*,struct nfc_target*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(struct nci_dev *ndev,
			       struct nci_rf_discover_ntf *ntf)
{
	struct nfc_target *target;
	int i, rc;

	for (i = 0; i < ndev->n_targets; i++) {
		target = &ndev->targets[i];
		if (target->logical_idx == ntf->rf_discovery_id) {
			/* This target already exists, add the new protocol */
			FUNC0(ndev, target, ntf->rf_protocol,
					     ntf->rf_tech_and_mode,
					     &ntf->rf_tech_specific_params);
			return;
		}
	}

	/* This is a new target, check if we've enough room */
	if (ndev->n_targets == NCI_MAX_DISCOVERED_TARGETS) {
		FUNC1("not enough room, ignoring new target...\n");
		return;
	}

	target = &ndev->targets[ndev->n_targets];

	rc = FUNC0(ndev, target, ntf->rf_protocol,
				  ntf->rf_tech_and_mode,
				  &ntf->rf_tech_specific_params);
	if (!rc) {
		target->logical_idx = ntf->rf_discovery_id;
		ndev->n_targets++;

		FUNC1("logical idx %d, n_targets %d\n", target->logical_idx,
			 ndev->n_targets);
	}
}