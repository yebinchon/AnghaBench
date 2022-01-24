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
struct sock {int /*<<< orphan*/  sk_v6_daddr; } ;
struct dst_entry {TYPE_1__* ops; int /*<<< orphan*/  obsolete; } ;
struct TYPE_4__ {int /*<<< orphan*/  dst_cookie; } ;
struct TYPE_3__ {scalar_t__ (* check ) (struct dst_entry*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct dst_entry* FUNC0 (struct sock*) ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct dst_entry*,int /*<<< orphan*/ ) ; 

void FUNC7(struct sock *sk)
{
	struct dst_entry *dst;

	if (FUNC3(&sk->sk_v6_daddr))
		return;

	FUNC4();
	dst = FUNC0(sk);
	if (!dst || !dst->obsolete ||
	    dst->ops->check(dst, FUNC1(sk)->dst_cookie)) {
		FUNC5();
		return;
	}
	FUNC5();

	FUNC2(sk, false);
}