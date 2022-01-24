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
struct nfc_target {int /*<<< orphan*/  idx; } ;
struct nfc_dev {int dummy; } ;
struct nci_dev {int /*<<< orphan*/  remote_gb_len; int /*<<< orphan*/  remote_gb; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  NFC_COMM_PASSIVE ; 
 int /*<<< orphan*/  NFC_PROTO_NFC_DEP ; 
 int /*<<< orphan*/  NFC_RF_INITIATOR ; 
 int FUNC0 (struct nfc_dev*,struct nfc_target*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nfc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nci_dev* FUNC2 (struct nfc_dev*) ; 
 int FUNC3 (struct nfc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nfc_dev *nfc_dev, struct nfc_target *target,
			   __u8 comm_mode, __u8 *gb, size_t gb_len)
{
	struct nci_dev *ndev = FUNC2(nfc_dev);
	int rc;

	FUNC4("target_idx %d, comm_mode %d\n", target->idx, comm_mode);

	rc = FUNC0(nfc_dev, target, NFC_PROTO_NFC_DEP);
	if (rc)
		return rc;

	rc = FUNC3(nfc_dev, ndev->remote_gb,
					  ndev->remote_gb_len);
	if (!rc)
		rc = FUNC1(nfc_dev, target->idx, NFC_COMM_PASSIVE,
					NFC_RF_INITIATOR);

	return rc;
}