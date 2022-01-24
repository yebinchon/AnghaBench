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
struct tcpm_hash_bucket {int /*<<< orphan*/  chain; } ;
struct tcp_metrics_block {int /*<<< orphan*/  tcpm_next; } ;
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct netlink_callback {unsigned int* args; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net*) ; 
 struct tcp_metrics_block* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,struct netlink_callback*,struct tcp_metrics_block*) ; 
 struct tcpm_hash_bucket* tcp_metrics_hash ; 
 unsigned int tcp_metrics_hash_log ; 
 int /*<<< orphan*/  FUNC6 (struct tcp_metrics_block*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb,
			       struct netlink_callback *cb)
{
	struct net *net = FUNC4(skb->sk);
	unsigned int max_rows = 1U << tcp_metrics_hash_log;
	unsigned int row, s_row = cb->args[0];
	int s_col = cb->args[1], col = s_col;

	for (row = s_row; row < max_rows; row++, s_col = 0) {
		struct tcp_metrics_block *tm;
		struct tcpm_hash_bucket *hb = tcp_metrics_hash + row;

		FUNC2();
		for (col = 0, tm = FUNC1(hb->chain); tm;
		     tm = FUNC1(tm->tcpm_next), col++) {
			if (!FUNC0(FUNC6(tm), net))
				continue;
			if (col < s_col)
				continue;
			if (FUNC5(skb, cb, tm) < 0) {
				FUNC3();
				goto done;
			}
		}
		FUNC3();
	}

done:
	cb->args[0] = row;
	cb->args[1] = col;
	return skb->len;
}