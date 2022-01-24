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
struct nci_set_config_param {scalar_t__ len; int /*<<< orphan*/  id; int /*<<< orphan*/ * val; } ;
struct nci_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NCI_LN_ATR_RES_GEN_BYTES ; 
 int /*<<< orphan*/  NCI_PN_ATR_REQ_GEN_BYTES ; 
 int /*<<< orphan*/  NCI_SET_CONFIG_TIMEOUT ; 
 scalar_t__ NFC_MAX_GT_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nci_dev*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nci_set_config_req ; 
 struct nci_dev* FUNC2 (struct nfc_dev*) ; 
 int /*<<< orphan*/ * FUNC3 (struct nfc_dev*,scalar_t__*) ; 

__attribute__((used)) static int FUNC4(struct nfc_dev *nfc_dev)
{
	struct nci_dev *ndev = FUNC2(nfc_dev);
	struct nci_set_config_param param;
	int rc;

	param.val = FUNC3(nfc_dev, &param.len);
	if ((param.val == NULL) || (param.len == 0))
		return 0;

	if (param.len > NFC_MAX_GT_LEN)
		return -EINVAL;

	param.id = NCI_PN_ATR_REQ_GEN_BYTES;

	rc = FUNC1(ndev, nci_set_config_req, (unsigned long)&param,
			 FUNC0(NCI_SET_CONFIG_TIMEOUT));
	if (rc)
		return rc;

	param.id = NCI_LN_ATR_RES_GEN_BYTES;

	return FUNC1(ndev, nci_set_config_req, (unsigned long)&param,
			   FUNC0(NCI_SET_CONFIG_TIMEOUT));
}