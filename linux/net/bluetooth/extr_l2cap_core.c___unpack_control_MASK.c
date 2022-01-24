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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct l2cap_chan {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  l2cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_EXT_CTRL ; 
 int /*<<< orphan*/  L2CAP_ENH_CTRL_SIZE ; 
 int /*<<< orphan*/  L2CAP_EXT_CTRL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct l2cap_chan *chan,
				    struct sk_buff *skb)
{
	if (FUNC6(FLAG_EXT_CTRL, &chan->flags)) {
		FUNC1(FUNC4(skb->data),
					  &FUNC2(skb)->l2cap);
		FUNC5(skb, L2CAP_EXT_CTRL_SIZE);
	} else {
		FUNC0(FUNC3(skb->data),
					  &FUNC2(skb)->l2cap);
		FUNC5(skb, L2CAP_ENH_CTRL_SIZE);
	}
}