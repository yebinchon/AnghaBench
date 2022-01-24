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
struct nci_uart {int /*<<< orphan*/  tx_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nci_uart*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC2(struct nci_uart *nu, struct sk_buff *skb)
{
	/* Queue TX packet */
	FUNC1(&nu->tx_q, skb);

	/* Try to start TX (if possible) */
	FUNC0(nu);

	return 0;
}