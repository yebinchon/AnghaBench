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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  priority; int /*<<< orphan*/  len; } ;
struct l2cap_chan {TYPE_1__* conn; int /*<<< orphan*/  flags; scalar_t__ hs_hchan; scalar_t__ hs_hcon; } ;
struct hci_conn {scalar_t__ type; int /*<<< orphan*/  hdev; } ;
struct TYPE_4__ {scalar_t__ force_active; } ;
struct TYPE_3__ {scalar_t__ hchan; struct hci_conn* hcon; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_COMPLETE ; 
 int /*<<< orphan*/  ACL_START ; 
 int /*<<< orphan*/  ACL_START_NO_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLAG_FLUSHABLE ; 
 int /*<<< orphan*/  FLAG_FORCE_ACTIVE ; 
 scalar_t__ LE_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct l2cap_chan *chan, struct sk_buff *skb)
{
	struct hci_conn *hcon = chan->conn->hcon;
	u16 flags;

	FUNC0("chan %p, skb %p len %d priority %u", chan, skb, skb->len,
	       skb->priority);

	if (chan->hs_hcon && !FUNC1(chan)) {
		if (chan->hs_hchan)
			FUNC3(chan->hs_hchan, skb, ACL_COMPLETE);
		else
			FUNC4(skb);

		return;
	}

	/* Use NO_FLUSH for LE links (where this is the only option) or
	 * if the BR/EDR link supports it and flushing has not been
	 * explicitly requested (through FLAG_FLUSHABLE).
	 */
	if (hcon->type == LE_LINK ||
	    (!FUNC6(FLAG_FLUSHABLE, &chan->flags) &&
	     FUNC5(hcon->hdev)))
		flags = ACL_START_NO_FLUSH;
	else
		flags = ACL_START;

	FUNC2(skb)->force_active = FUNC6(FLAG_FORCE_ACTIVE, &chan->flags);
	FUNC3(chan->conn->hchan, skb, flags);
}