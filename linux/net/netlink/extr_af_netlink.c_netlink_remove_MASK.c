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
struct sock {size_t sk_protocol; int /*<<< orphan*/  sk_refcnt; } ;
struct netlink_table {int /*<<< orphan*/  hash; } ;
struct TYPE_2__ {scalar_t__ subscriptions; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 size_t NETLINK_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  genl_sk_destructing_cnt ; 
 int /*<<< orphan*/  netlink_rhashtable_params ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 struct netlink_table* nl_table ; 
 TYPE_1__* FUNC7 (struct sock*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct sock *sk)
{
	struct netlink_table *table;

	table = &nl_table[sk->sk_protocol];
	if (!FUNC9(&table->hash, &FUNC7(sk)->node,
				    netlink_rhashtable_params)) {
		FUNC0(FUNC8(&sk->sk_refcnt) == 1);
		FUNC2(sk);
	}

	FUNC4();
	if (FUNC7(sk)->subscriptions) {
		FUNC1(sk);
		FUNC6(sk);
	}
	if (sk->sk_protocol == NETLINK_GENERIC)
		FUNC3(&genl_sk_destructing_cnt);
	FUNC5();
}