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
struct sock {int /*<<< orphan*/  sk_prot; int /*<<< orphan*/  sk_nulls_node; } ;
struct inet_sock {scalar_t__ inet_sport; scalar_t__ inet_num; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct inet_sock* FUNC1 (struct sock*) ; 
 TYPE_1__ ping_table ; 
 int /*<<< orphan*/  FUNC2 (char*,struct inet_sock*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct sock *sk)
{
	struct inet_sock *isk = FUNC1(sk);

	FUNC2("ping_unhash(isk=%p,isk->num=%u)\n", isk, isk->inet_num);
	FUNC8(&ping_table.lock);
	if (FUNC3(sk)) {
		FUNC0(&sk->sk_nulls_node);
		FUNC4(&sk->sk_nulls_node);
		FUNC7(sk);
		isk->inet_num = 0;
		isk->inet_sport = 0;
		FUNC6(FUNC5(sk), sk->sk_prot, -1);
	}
	FUNC9(&ping_table.lock);
}