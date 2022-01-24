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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct l2cap_cmd_rej_unk {int /*<<< orphan*/  reason; } ;
struct l2cap_cmd_hdr {int /*<<< orphan*/  ident; int /*<<< orphan*/  code; int /*<<< orphan*/  len; } ;
struct hci_conn {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  rej ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ L2CAP_CMD_HDR_SIZE ; 
 int /*<<< orphan*/  L2CAP_COMMAND_REJ ; 
 int /*<<< orphan*/  L2CAP_REJ_NOT_UNDERSTOOD ; 
 scalar_t__ LE_LINK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct l2cap_conn*,struct l2cap_cmd_hdr*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct l2cap_cmd_rej_unk*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static inline void FUNC8(struct l2cap_conn *conn,
					struct sk_buff *skb)
{
	struct hci_conn *hcon = conn->hcon;
	struct l2cap_cmd_hdr *cmd;
	u16 len;
	int err;

	if (hcon->type != LE_LINK)
		goto drop;

	if (skb->len < L2CAP_CMD_HDR_SIZE)
		goto drop;

	cmd = (void *) skb->data;
	FUNC7(skb, L2CAP_CMD_HDR_SIZE);

	len = FUNC6(cmd->len);

	FUNC0("code 0x%2.2x len %d id 0x%2.2x", cmd->code, len, cmd->ident);

	if (len != skb->len || !cmd->ident) {
		FUNC0("corrupted command");
		goto drop;
	}

	err = FUNC4(conn, cmd, len, skb->data);
	if (err) {
		struct l2cap_cmd_rej_unk rej;

		FUNC1("Wrong link type (%d)", err);

		rej.reason = FUNC2(L2CAP_REJ_NOT_UNDERSTOOD);
		FUNC5(conn, cmd->ident, L2CAP_COMMAND_REJ,
			       sizeof(rej), &rej);
	}

drop:
	FUNC3(skb);
}