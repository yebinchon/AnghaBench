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
struct smp_ltk {scalar_t__ ediv; scalar_t__ rand; int enc_size; scalar_t__ type; int /*<<< orphan*/  list; int /*<<< orphan*/  val; } ;
struct sk_buff {scalar_t__ data; } ;
struct hci_ev_le_ltk_req {scalar_t__ ediv; scalar_t__ rand; int /*<<< orphan*/  handle; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_cp_le_ltk_reply {int /*<<< orphan*/  handle; int /*<<< orphan*/  ltk; } ;
struct hci_cp_le_ltk_neg_reply {int /*<<< orphan*/  handle; int /*<<< orphan*/  ltk; } ;
struct hci_conn {int enc_key_size; int /*<<< orphan*/  flags; int /*<<< orphan*/  pending_sec_level; int /*<<< orphan*/  handle; int /*<<< orphan*/  role; int /*<<< orphan*/  dst_type; int /*<<< orphan*/  dst; } ;
typedef  int /*<<< orphan*/  neg ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_CONN_STK_ENCRYPT ; 
 int /*<<< orphan*/  HCI_OP_LE_LTK_NEG_REPLY ; 
 int /*<<< orphan*/  HCI_OP_LE_LTK_REPLY ; 
 scalar_t__ SMP_STK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 struct smp_ltk* FUNC7 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_le_ltk_reply*) ; 
 int /*<<< orphan*/  FUNC9 (struct smp_ltk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct smp_ltk*) ; 
 int /*<<< orphan*/  FUNC15 (struct smp_ltk*) ; 

__attribute__((used)) static void FUNC16(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_le_ltk_req *ev = (void *) skb->data;
	struct hci_cp_le_ltk_reply cp;
	struct hci_cp_le_ltk_neg_reply neg;
	struct hci_conn *conn;
	struct smp_ltk *ltk;

	FUNC0("%s handle 0x%4.4x", hdev->name, FUNC1(ev->handle));

	FUNC5(hdev);

	conn = FUNC4(hdev, FUNC1(ev->handle));
	if (conn == NULL)
		goto not_found;

	ltk = FUNC7(hdev, &conn->dst, conn->dst_type, conn->role);
	if (!ltk)
		goto not_found;

	if (FUNC14(ltk)) {
		/* With SC both EDiv and Rand are set to zero */
		if (ev->ediv || ev->rand)
			goto not_found;
	} else {
		/* For non-SC keys check that EDiv and Rand match */
		if (ev->ediv != ltk->ediv || ev->rand != ltk->rand)
			goto not_found;
	}

	FUNC11(cp.ltk, ltk->val, ltk->enc_size);
	FUNC12(cp.ltk + ltk->enc_size, 0, sizeof(cp.ltk) - ltk->enc_size);
	cp.handle = FUNC3(conn->handle);

	conn->pending_sec_level = FUNC15(ltk);

	conn->enc_key_size = ltk->enc_size;

	FUNC8(hdev, HCI_OP_LE_LTK_REPLY, sizeof(cp), &cp);

	/* Ref. Bluetooth Core SPEC pages 1975 and 2004. STK is a
	 * temporary key used to encrypt a connection following
	 * pairing. It is used during the Encrypted Session Setup to
	 * distribute the keys. Later, security can be re-established
	 * using a distributed LTK.
	 */
	if (ltk->type == SMP_STK) {
		FUNC13(HCI_CONN_STK_ENCRYPT, &conn->flags);
		FUNC10(&ltk->list);
		FUNC9(ltk, rcu);
	} else {
		FUNC2(HCI_CONN_STK_ENCRYPT, &conn->flags);
	}

	FUNC6(hdev);

	return;

not_found:
	neg.handle = ev->handle;
	FUNC8(hdev, HCI_OP_LE_LTK_NEG_REPLY, sizeof(neg), &neg);
	FUNC6(hdev);
}