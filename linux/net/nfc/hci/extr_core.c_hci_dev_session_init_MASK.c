#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int /*<<< orphan*/  session_id; TYPE_3__* gates; int /*<<< orphan*/  gate_count; } ;
struct nfc_hci_dev {TYPE_2__ init_data; TYPE_1__* ops; } ;
struct TYPE_6__ {scalar_t__ gate; int /*<<< orphan*/  pipe; } ;
struct TYPE_4__ {int (* load_session ) (struct nfc_hci_dev*) ;} ;

/* Variables and functions */
 int EPROTO ; 
 scalar_t__ NFC_HCI_ADMIN_GATE ; 
 int /*<<< orphan*/  NFC_HCI_ADMIN_SESSION_IDENTITY ; 
 int /*<<< orphan*/  NFC_HCI_HOST_CONTROLLER_ID ; 
 int FUNC0 (struct nfc_hci_dev*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct nfc_hci_dev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nfc_hci_dev*) ; 
 int FUNC5 (struct nfc_hci_dev*,scalar_t__,int /*<<< orphan*/ ,struct sk_buff**) ; 
 int FUNC6 (struct nfc_hci_dev*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nfc_hci_dev*) ; 

__attribute__((used)) static int FUNC9(struct nfc_hci_dev *hdev)
{
	struct sk_buff *skb = NULL;
	int r;

	if (hdev->init_data.gates[0].gate != NFC_HCI_ADMIN_GATE)
		return -EPROTO;

	r = FUNC3(hdev, NFC_HCI_HOST_CONTROLLER_ID,
				 hdev->init_data.gates[0].gate,
				 hdev->init_data.gates[0].pipe);
	if (r < 0)
		goto exit;

	r = FUNC5(hdev, NFC_HCI_ADMIN_GATE,
			      NFC_HCI_ADMIN_SESSION_IDENTITY, &skb);
	if (r < 0)
		goto disconnect_all;

	if (skb->len && skb->len == FUNC7(hdev->init_data.session_id) &&
		(FUNC2(hdev->init_data.session_id, skb->data,
			   skb->len) == 0) && hdev->ops->load_session) {
		/* Restore gate<->pipe table from some proprietary location. */

		r = hdev->ops->load_session(hdev);

		if (r < 0)
			goto disconnect_all;
	} else {

		r = FUNC4(hdev);
		if (r < 0)
			goto exit;

		r = FUNC0(hdev, hdev->init_data.gate_count,
					  hdev->init_data.gates);
		if (r < 0)
			goto disconnect_all;

		r = FUNC6(hdev, NFC_HCI_ADMIN_GATE,
				NFC_HCI_ADMIN_SESSION_IDENTITY,
				hdev->init_data.session_id,
				FUNC7(hdev->init_data.session_id));
	}
	if (r == 0)
		goto exit;

disconnect_all:
	FUNC4(hdev);

exit:
	FUNC1(skb);

	return r;
}