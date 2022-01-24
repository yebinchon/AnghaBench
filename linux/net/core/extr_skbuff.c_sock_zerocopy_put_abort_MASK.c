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
struct ubuf_info {int /*<<< orphan*/  len; } ;
struct sock {int /*<<< orphan*/  sk_zckey; } ;
struct TYPE_2__ {struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct ubuf_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubuf_info*) ; 

void FUNC3(struct ubuf_info *uarg, bool have_uref)
{
	if (uarg) {
		struct sock *sk = FUNC1(uarg)->sk;

		FUNC0(&sk->sk_zckey);
		uarg->len--;

		if (have_uref)
			FUNC2(uarg);
	}
}