#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct nci_hcp_message {int /*<<< orphan*/  header; } ;
struct nci_dev {TYPE_1__* hci_dev; } ;
struct nci_data {size_t pipe; size_t* data; size_t data_len; int /*<<< orphan*/  cmd; int /*<<< orphan*/  conn_id; } ;
struct nci_conn_info {TYPE_2__* rx_skb; int /*<<< orphan*/  conn_id; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {size_t* gate2pipe; struct nci_conn_info* conn_info; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int ENOMEM ; 
 int EPROTO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NCI_DATA_TIMEOUT ; 
 int /*<<< orphan*/  NCI_HCI_ANY_SET_PARAMETER ; 
 int /*<<< orphan*/  NCI_HCI_HCP_COMMAND ; 
 int /*<<< orphan*/  NCI_HCI_HCP_MESSAGE_HEADER_LEN ; 
 size_t NCI_HCI_INVALID_PIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int NCI_STATUS_OK ; 
 int /*<<< orphan*/  FUNC2 (size_t*) ; 
 size_t* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t*,size_t const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nci_hci_send_data_req ; 
 int FUNC7 (struct nci_dev*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int FUNC10(struct nci_dev *ndev, u8 gate, u8 idx,
		      const u8 *param, size_t param_len)
{
	struct nci_hcp_message *message;
	struct nci_conn_info *conn_info;
	struct nci_data data;
	int r;
	u8 *tmp;
	u8 pipe = ndev->hci_dev->gate2pipe[gate];

	FUNC8("idx=%d to gate %d\n", idx, gate);

	if (pipe == NCI_HCI_INVALID_PIPE)
		return -EADDRNOTAVAIL;

	conn_info = ndev->hci_dev->conn_info;
	if (!conn_info)
		return -EPROTO;

	tmp = FUNC3(1 + param_len, GFP_KERNEL);
	if (!tmp)
		return -ENOMEM;

	*tmp = idx;
	FUNC4(tmp + 1, param, param_len);

	data.conn_id = conn_info->conn_id;
	data.pipe = pipe;
	data.cmd = FUNC0(NCI_HCI_HCP_COMMAND,
				       NCI_HCI_ANY_SET_PARAMETER);
	data.data = tmp;
	data.data_len = param_len + 1;

	r = FUNC7(ndev, nci_hci_send_data_req,
			(unsigned long)&data,
			FUNC5(NCI_DATA_TIMEOUT));
	if (r == NCI_STATUS_OK) {
		message = (struct nci_hcp_message *)conn_info->rx_skb->data;
		r = FUNC6(
			FUNC1(message->header));
		FUNC9(conn_info->rx_skb, NCI_HCI_HCP_MESSAGE_HEADER_LEN);
	}

	FUNC2(tmp);
	return r;
}