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
struct sock {int dummy; } ;
struct ipv6_pinfo {int /*<<< orphan*/  ipv6_fl_list; } ;
struct ipv6_fl_socklist {int /*<<< orphan*/  fl; int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ipv6_pinfo* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  ip6_sk_fl_lock ; 
 int /*<<< orphan*/  FUNC2 (struct ipv6_fl_socklist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ipv6_fl_socklist* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct sock *sk)
{
	struct ipv6_pinfo *np = FUNC1(sk);
	struct ipv6_fl_socklist *sfl;

	if (!FUNC4(np->ipv6_fl_list))
		return;

	FUNC6(&ip6_sk_fl_lock);
	while ((sfl = FUNC5(np->ipv6_fl_list,
						FUNC3(&ip6_sk_fl_lock))) != NULL) {
		np->ipv6_fl_list = sfl->next;
		FUNC7(&ip6_sk_fl_lock);

		FUNC0(sfl->fl);
		FUNC2(sfl, rcu);

		FUNC6(&ip6_sk_fl_lock);
	}
	FUNC7(&ip6_sk_fl_lock);
}