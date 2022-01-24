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
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct nfc_llcp_sock {int /*<<< orphan*/  recv_n; struct nfc_llcp_local* local; } ;
struct nfc_llcp_local {int /*<<< orphan*/  tx_queue; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  LLCP_PDU_RR ; 
 int /*<<< orphan*/  LLCP_SEQUENCE_SIZE ; 
 struct sk_buff* FUNC0 (struct nfc_llcp_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 

int FUNC4(struct nfc_llcp_sock *sock)
{
	struct sk_buff *skb;
	struct nfc_llcp_local *local;

	FUNC1("Send rr nr %d\n", sock->recv_n);

	local = sock->local;
	if (local == NULL)
		return -ENODEV;

	skb = FUNC0(sock, LLCP_PDU_RR, LLCP_SEQUENCE_SIZE);
	if (skb == NULL)
		return -ENOMEM;

	FUNC2(skb, LLCP_SEQUENCE_SIZE);

	skb->data[2] = sock->recv_n;

	FUNC3(&local->tx_queue, skb);

	return 0;
}