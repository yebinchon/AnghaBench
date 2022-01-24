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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_hdr {int /*<<< orphan*/  len; } ;
struct l2cap_conn {int rx_len; struct sk_buff* rx_skb; } ;
struct hci_conn {TYPE_1__* hdev; struct l2cap_conn* l2cap_data; } ;
struct TYPE_2__ {scalar_t__ dev_type; } ;

/* Variables and functions */
#define  ACL_COMPLETE 131 
#define  ACL_CONT 130 
#define  ACL_START 129 
#define  ACL_START_NO_FLUSH 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  ECOMM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HCI_PRIMARY ; 
 int L2CAP_HDR_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct l2cap_conn* FUNC5 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_conn*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 

void FUNC10(struct hci_conn *hcon, struct sk_buff *skb, u16 flags)
{
	struct l2cap_conn *conn = hcon->l2cap_data;
	struct l2cap_hdr *hdr;
	int len;

	/* For AMP controller do not create l2cap conn */
	if (!conn && hcon->hdev->dev_type != HCI_PRIMARY)
		goto drop;

	if (!conn)
		conn = FUNC5(hcon);

	if (!conn)
		goto drop;

	FUNC0("conn %p len %d flags 0x%x", conn, skb->len, flags);

	switch (flags) {
	case ACL_START:
	case ACL_START_NO_FLUSH:
	case ACL_COMPLETE:
		if (conn->rx_len) {
			FUNC1("Unexpected start frame (len %d)", skb->len);
			FUNC4(conn->rx_skb);
			conn->rx_skb = NULL;
			conn->rx_len = 0;
			FUNC6(conn, ECOMM);
		}

		/* Start fragment always begin with Basic L2CAP header */
		if (skb->len < L2CAP_HDR_SIZE) {
			FUNC1("Frame is too short (len %d)", skb->len);
			FUNC6(conn, ECOMM);
			goto drop;
		}

		hdr = (struct l2cap_hdr *) skb->data;
		len = FUNC2(hdr->len) + L2CAP_HDR_SIZE;

		if (len == skb->len) {
			/* Complete frame received */
			FUNC7(conn, skb);
			return;
		}

		FUNC0("Start: total len %d, frag len %d", len, skb->len);

		if (skb->len > len) {
			FUNC1("Frame is too long (len %d, expected len %d)",
			       skb->len, len);
			FUNC6(conn, ECOMM);
			goto drop;
		}

		/* Allocate skb for the complete frame (with header) */
		conn->rx_skb = FUNC3(len, GFP_KERNEL);
		if (!conn->rx_skb)
			goto drop;

		FUNC8(skb, FUNC9(conn->rx_skb, skb->len),
					  skb->len);
		conn->rx_len = len - skb->len;
		break;

	case ACL_CONT:
		FUNC0("Cont: frag len %d (expecting %d)", skb->len, conn->rx_len);

		if (!conn->rx_len) {
			FUNC1("Unexpected continuation frame (len %d)", skb->len);
			FUNC6(conn, ECOMM);
			goto drop;
		}

		if (skb->len > conn->rx_len) {
			FUNC1("Fragment is too long (len %d, expected %d)",
			       skb->len, conn->rx_len);
			FUNC4(conn->rx_skb);
			conn->rx_skb = NULL;
			conn->rx_len = 0;
			FUNC6(conn, ECOMM);
			goto drop;
		}

		FUNC8(skb, FUNC9(conn->rx_skb, skb->len),
					  skb->len);
		conn->rx_len -= skb->len;

		if (!conn->rx_len) {
			/* Complete frame received. l2cap_recv_frame
			 * takes ownership of the skb so set the global
			 * rx_skb pointer to NULL first.
			 */
			struct sk_buff *rx_skb = conn->rx_skb;
			conn->rx_skb = NULL;
			FUNC7(conn, rx_skb);
		}
		break;
	}

drop:
	FUNC4(skb);
}