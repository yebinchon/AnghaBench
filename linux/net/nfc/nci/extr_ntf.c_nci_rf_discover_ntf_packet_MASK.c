#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int /*<<< orphan*/  nfcv_poll; int /*<<< orphan*/  nfcf_poll; int /*<<< orphan*/  nfcb_poll; int /*<<< orphan*/  nfca_poll; } ;
struct nci_rf_discover_ntf {scalar_t__ rf_discovery_id; scalar_t__ rf_protocol; scalar_t__ rf_tech_and_mode; scalar_t__ rf_tech_specific_params_len; scalar_t__ ntf_type; TYPE_1__ rf_tech_specific_params; } ;
struct nci_dev {int /*<<< orphan*/  n_targets; int /*<<< orphan*/  targets; int /*<<< orphan*/  nfc_dev; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 scalar_t__ NCI_DISCOVER_NTF_TYPE_MORE ; 
#define  NCI_NFC_A_PASSIVE_POLL_MODE 131 
#define  NCI_NFC_B_PASSIVE_POLL_MODE 130 
#define  NCI_NFC_F_PASSIVE_POLL_MODE 129 
#define  NCI_NFC_V_PASSIVE_POLL_MODE 128 
 int /*<<< orphan*/  NCI_W4_ALL_DISCOVERIES ; 
 int /*<<< orphan*/  NCI_W4_HOST_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nci_dev*,struct nci_rf_discover_ntf*) ; 
 int /*<<< orphan*/ * FUNC2 (struct nci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct nci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct nci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct nci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

__attribute__((used)) static void FUNC9(struct nci_dev *ndev,
				       struct sk_buff *skb)
{
	struct nci_rf_discover_ntf ntf;
	__u8 *data = skb->data;
	bool add_target = true;

	ntf.rf_discovery_id = *data++;
	ntf.rf_protocol = *data++;
	ntf.rf_tech_and_mode = *data++;
	ntf.rf_tech_specific_params_len = *data++;

	FUNC7("rf_discovery_id %d\n", ntf.rf_discovery_id);
	FUNC7("rf_protocol 0x%x\n", ntf.rf_protocol);
	FUNC7("rf_tech_and_mode 0x%x\n", ntf.rf_tech_and_mode);
	FUNC7("rf_tech_specific_params_len %d\n",
		 ntf.rf_tech_specific_params_len);

	if (ntf.rf_tech_specific_params_len > 0) {
		switch (ntf.rf_tech_and_mode) {
		case NCI_NFC_A_PASSIVE_POLL_MODE:
			data = FUNC2(ndev,
				&(ntf.rf_tech_specific_params.nfca_poll), data);
			break;

		case NCI_NFC_B_PASSIVE_POLL_MODE:
			data = FUNC3(ndev,
				&(ntf.rf_tech_specific_params.nfcb_poll), data);
			break;

		case NCI_NFC_F_PASSIVE_POLL_MODE:
			data = FUNC4(ndev,
				&(ntf.rf_tech_specific_params.nfcf_poll), data);
			break;

		case NCI_NFC_V_PASSIVE_POLL_MODE:
			data = FUNC5(ndev,
				&(ntf.rf_tech_specific_params.nfcv_poll), data);
			break;

		default:
			FUNC8("unsupported rf_tech_and_mode 0x%x\n",
			       ntf.rf_tech_and_mode);
			data += ntf.rf_tech_specific_params_len;
			add_target = false;
		}
	}

	ntf.ntf_type = *data++;
	FUNC7("ntf_type %d\n", ntf.ntf_type);

	if (add_target == true)
		FUNC1(ndev, &ntf);

	if (ntf.ntf_type == NCI_DISCOVER_NTF_TYPE_MORE) {
		FUNC0(&ndev->state, NCI_W4_ALL_DISCOVERIES);
	} else {
		FUNC0(&ndev->state, NCI_W4_HOST_SELECT);
		FUNC6(ndev->nfc_dev, ndev->targets,
				  ndev->n_targets);
	}
}