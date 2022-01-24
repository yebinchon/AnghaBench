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
struct sk_buff {scalar_t__ data; } ;
struct l2cap_ctrl {int dummy; } ;
struct l2cap_chan {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_EXT_CTRL ; 
 scalar_t__ L2CAP_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(struct l2cap_chan *chan,
				  struct l2cap_ctrl *control,
				  struct sk_buff *skb)
{
	if (FUNC4(FLAG_EXT_CTRL, &chan->flags)) {
		FUNC3(FUNC1(control),
				   skb->data + L2CAP_HDR_SIZE);
	} else {
		FUNC2(FUNC0(control),
				   skb->data + L2CAP_HDR_SIZE);
	}
}