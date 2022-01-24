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
struct smp_chan {int /*<<< orphan*/  security_timer; } ;
struct sk_buff {int dummy; } ;
struct l2cap_chan {TYPE_1__* conn; struct smp_chan* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  hcon; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*) ; 
 int /*<<< orphan*/  HCI_ERROR_AUTH_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct l2cap_chan*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct l2cap_chan *chan, struct sk_buff *skb)
{
	int err;

	FUNC0("chan %p", chan);

	err = FUNC3(chan, skb);
	if (err) {
		struct smp_chan *smp = chan->data;

		if (smp)
			FUNC1(&smp->security_timer);

		FUNC2(chan->conn->hcon, HCI_ERROR_AUTH_FAILURE);
	}

	return err;
}