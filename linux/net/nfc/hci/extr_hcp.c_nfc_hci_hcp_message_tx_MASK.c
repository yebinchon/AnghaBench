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
typedef  scalar_t__ u8 ;
struct sk_buff {scalar_t__ data; } ;
struct nfc_hci_dev {int max_data_link_payload; int /*<<< orphan*/  msg_tx_work; int /*<<< orphan*/  msg_tx_mutex; int /*<<< orphan*/  msg_tx_queue; scalar_t__ shutting_down; struct nfc_dev* ndev; } ;
struct nfc_dev {int tx_headroom; int tx_tailroom; } ;
struct TYPE_2__ {struct TYPE_2__* data; int /*<<< orphan*/  header; } ;
struct hcp_packet {scalar_t__ header; TYPE_1__ message; } ;
struct hci_msg {int wait_response; unsigned long completion_delay; int /*<<< orphan*/  msg_frags; int /*<<< orphan*/  msg_l; void* cb_context; int /*<<< orphan*/  cb; } ;
typedef  int /*<<< orphan*/  data_exchange_cb_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ NFC_HCI_FRAGMENT ; 
 scalar_t__ NFC_HCI_HCP_COMMAND ; 
 int NFC_HCI_HCP_PACKET_HEADER_LEN ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_msg*) ; 
 struct hci_msg* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 

int FUNC15(struct nfc_hci_dev *hdev, u8 pipe,
			   u8 type, u8 instruction,
			   const u8 *payload, size_t payload_len,
			   data_exchange_cb_t cb, void *cb_context,
			   unsigned long completion_delay)
{
	struct nfc_dev *ndev = hdev->ndev;
	struct hci_msg *cmd;
	const u8 *ptr = payload;
	int hci_len, err;
	bool firstfrag = true;

	cmd = FUNC4(sizeof(struct hci_msg), GFP_KERNEL);
	if (cmd == NULL)
		return -ENOMEM;

	FUNC1(&cmd->msg_l);
	FUNC11(&cmd->msg_frags);
	cmd->wait_response = (type == NFC_HCI_HCP_COMMAND) ? true : false;
	cmd->cb = cb;
	cmd->cb_context = cb_context;
	cmd->completion_delay = completion_delay;

	hci_len = payload_len + 1;
	while (hci_len > 0) {
		struct sk_buff *skb;
		int skb_len, data_link_len;
		struct hcp_packet *packet;

		if (NFC_HCI_HCP_PACKET_HEADER_LEN + hci_len <=
		    hdev->max_data_link_payload)
			data_link_len = hci_len;
		else
			data_link_len = hdev->max_data_link_payload -
					NFC_HCI_HCP_PACKET_HEADER_LEN;

		skb_len = ndev->tx_headroom + NFC_HCI_HCP_PACKET_HEADER_LEN +
			  data_link_len + ndev->tx_tailroom;
		hci_len -= data_link_len;

		skb = FUNC2(skb_len, GFP_KERNEL);
		if (skb == NULL) {
			err = -ENOMEM;
			goto out_skb_err;
		}
		FUNC14(skb, ndev->tx_headroom);

		FUNC10(skb, NFC_HCI_HCP_PACKET_HEADER_LEN + data_link_len);

		/* Only the last fragment will have the cb bit set to 1 */
		packet = (struct hcp_packet *)skb->data;
		packet->header = pipe;
		if (firstfrag) {
			firstfrag = false;
			packet->message.header = FUNC0(type, instruction);
			if (ptr) {
				FUNC6(packet->message.data, ptr,
				       data_link_len - 1);
				ptr += data_link_len - 1;
			}
		} else {
			FUNC6(&packet->message, ptr, data_link_len);
			ptr += data_link_len;
		}

		/* This is the last fragment, set the cb bit */
		if (hci_len == 0)
			packet->header |= ~NFC_HCI_FRAGMENT;

		FUNC13(&cmd->msg_frags, skb);
	}

	FUNC7(&hdev->msg_tx_mutex);

	if (hdev->shutting_down) {
		err = -ESHUTDOWN;
		FUNC8(&hdev->msg_tx_mutex);
		goto out_skb_err;
	}

	FUNC5(&cmd->msg_l, &hdev->msg_tx_queue);
	FUNC8(&hdev->msg_tx_mutex);

	FUNC9(&hdev->msg_tx_work);

	return 0;

out_skb_err:
	FUNC12(&cmd->msg_frags);
	FUNC3(cmd);

	return err;
}