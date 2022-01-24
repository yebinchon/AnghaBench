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
struct sk_buff {int dummy; } ;
struct nfc_llcp_sock {struct nfc_dev* dev; struct nfc_llcp_local* local; } ;
struct nfc_llcp_local {int /*<<< orphan*/  tx_queue; } ;
struct nfc_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  LLCP_PDU_DISC ; 
 struct sk_buff* FUNC0 (struct nfc_llcp_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 

int FUNC3(struct nfc_llcp_sock *sock)
{
	struct sk_buff *skb;
	struct nfc_dev *dev;
	struct nfc_llcp_local *local;

	FUNC1("Sending DISC\n");

	local = sock->local;
	if (local == NULL)
		return -ENODEV;

	dev = sock->dev;
	if (dev == NULL)
		return -ENODEV;

	skb = FUNC0(sock, LLCP_PDU_DISC, 0);
	if (skb == NULL)
		return -ENOMEM;

	FUNC2(&local->tx_queue, skb);

	return 0;
}