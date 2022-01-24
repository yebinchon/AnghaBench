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
struct smp_chan {int /*<<< orphan*/  allow_cmd; } ;
struct sk_buff {int len; int* data; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct l2cap_chan {struct smp_chan* data; struct l2cap_conn* conn; } ;
struct hci_conn {int /*<<< orphan*/  dst; int /*<<< orphan*/  hdev; } ;
typedef  int /*<<< orphan*/  code ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EILSEQ ; 
 int EPERM ; 
 int /*<<< orphan*/  HCI_LE_ENABLED ; 
#define  SMP_CMD_DHKEY_CHECK 141 
#define  SMP_CMD_ENCRYPT_INFO 140 
#define  SMP_CMD_IDENT_ADDR_INFO 139 
#define  SMP_CMD_IDENT_INFO 138 
#define  SMP_CMD_KEYPRESS_NOTIFY 137 
#define  SMP_CMD_MASTER_IDENT 136 
 int SMP_CMD_MAX ; 
 int SMP_CMD_NOTSUPP ; 
#define  SMP_CMD_PAIRING_CONFIRM 135 
#define  SMP_CMD_PAIRING_FAIL 134 
#define  SMP_CMD_PAIRING_RANDOM 133 
#define  SMP_CMD_PAIRING_REQ 132 
#define  SMP_CMD_PAIRING_RSP 131 
#define  SMP_CMD_PUBLIC_KEY 130 
#define  SMP_CMD_SECURITY_REQ 129 
#define  SMP_CMD_SIGN_INFO 128 
 int SMP_PAIRING_NOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int FUNC5 (struct l2cap_conn*,struct sk_buff*) ; 
 int FUNC6 (struct l2cap_conn*,struct sk_buff*) ; 
 int FUNC7 (struct l2cap_conn*,struct sk_buff*) ; 
 int FUNC8 (struct l2cap_conn*,struct sk_buff*) ; 
 int FUNC9 (struct l2cap_conn*,struct sk_buff*) ; 
 int FUNC10 (struct l2cap_conn*,struct sk_buff*) ; 
 int FUNC11 (struct l2cap_conn*,struct sk_buff*) ; 
 int FUNC12 (struct l2cap_conn*,struct sk_buff*) ; 
 int FUNC13 (struct l2cap_conn*,struct sk_buff*) ; 
 int FUNC14 (struct l2cap_conn*,struct sk_buff*) ; 
 int FUNC15 (struct l2cap_conn*,struct sk_buff*) ; 
 int FUNC16 (struct l2cap_conn*,struct sk_buff*) ; 
 int FUNC17 (struct l2cap_conn*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct l2cap_conn*,int) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct l2cap_chan *chan, struct sk_buff *skb)
{
	struct l2cap_conn *conn = chan->conn;
	struct hci_conn *hcon = conn->hcon;
	struct smp_chan *smp;
	__u8 code, reason;
	int err = 0;

	if (skb->len < 1)
		return -EILSEQ;

	if (!FUNC2(hcon->hdev, HCI_LE_ENABLED)) {
		reason = SMP_PAIRING_NOTSUPP;
		goto done;
	}

	code = skb->data[0];
	FUNC4(skb, sizeof(code));

	smp = chan->data;

	if (code > SMP_CMD_MAX)
		goto drop;

	if (smp && !FUNC19(code, &smp->allow_cmd))
		goto drop;

	/* If we don't have a context the only allowed commands are
	 * pairing request and security request.
	 */
	if (!smp && code != SMP_CMD_PAIRING_REQ && code != SMP_CMD_SECURITY_REQ)
		goto drop;

	switch (code) {
	case SMP_CMD_PAIRING_REQ:
		reason = FUNC13(conn, skb);
		break;

	case SMP_CMD_PAIRING_FAIL:
		FUNC18(conn, 0);
		err = -EPERM;
		break;

	case SMP_CMD_PAIRING_RSP:
		reason = FUNC14(conn, skb);
		break;

	case SMP_CMD_SECURITY_REQ:
		reason = FUNC16(conn, skb);
		break;

	case SMP_CMD_PAIRING_CONFIRM:
		reason = FUNC11(conn, skb);
		break;

	case SMP_CMD_PAIRING_RANDOM:
		reason = FUNC12(conn, skb);
		break;

	case SMP_CMD_ENCRYPT_INFO:
		reason = FUNC6(conn, skb);
		break;

	case SMP_CMD_MASTER_IDENT:
		reason = FUNC10(conn, skb);
		break;

	case SMP_CMD_IDENT_INFO:
		reason = FUNC8(conn, skb);
		break;

	case SMP_CMD_IDENT_ADDR_INFO:
		reason = FUNC7(conn, skb);
		break;

	case SMP_CMD_SIGN_INFO:
		reason = FUNC17(conn, skb);
		break;

	case SMP_CMD_PUBLIC_KEY:
		reason = FUNC15(conn, skb);
		break;

	case SMP_CMD_DHKEY_CHECK:
		reason = FUNC5(conn, skb);
		break;

	case SMP_CMD_KEYPRESS_NOTIFY:
		reason = FUNC9(conn, skb);
		break;

	default:
		FUNC0("Unknown command code 0x%2.2x", code);
		reason = SMP_CMD_NOTSUPP;
		goto done;
	}

done:
	if (!err) {
		if (reason)
			FUNC18(conn, reason);
		FUNC3(skb);
	}

	return err;

drop:
	FUNC1(hcon->hdev, "unexpected SMP command 0x%02x from %pMR",
		   code, &hcon->dst);
	FUNC3(skb);
	return 0;
}