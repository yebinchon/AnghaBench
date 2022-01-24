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
typedef  int u32 ;
struct TYPE_2__ {int deferred_recv; } ;
struct tipc_link {int /*<<< orphan*/  net; int /*<<< orphan*/  deferdq; TYPE_1__ stats; } ;
struct sk_buff_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_MSG ; 
 int TIPC_LINK_SND_STATE ; 
 scalar_t__ FUNC0 (struct tipc_link*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_link*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff_head*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct tipc_link *l,
				    struct sk_buff_head *xmitq)
{
	u32 def_cnt = ++l->stats.deferred_recv;
	u32 defq_len = FUNC1(&l->deferdq);
	int match1, match2;

	if (FUNC0(l)) {
		match1 = def_cnt & 0xf;
		match2 = FUNC3(l->net) & 0xf;
		if (match1 == match2)
			return TIPC_LINK_SND_STATE;
		return 0;
	}

	if (defq_len >= 3 && !((defq_len - 3) % 16))
		FUNC2(l, STATE_MSG, 0, 0, 0, 0, 0, xmitq);
	return 0;
}