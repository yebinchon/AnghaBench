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
struct sock {int /*<<< orphan*/  sk_filter; } ;
struct sk_filter {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOCK_FILTER_LOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct sk_filter* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_filter*) ; 
 scalar_t__ FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 

int FUNC5(struct sock *sk)
{
	int ret = -ENOENT;
	struct sk_filter *filter;

	if (FUNC4(sk, SOCK_FILTER_LOCKED))
		return -EPERM;

	filter = FUNC2(sk->sk_filter,
					   FUNC1(sk));
	if (filter) {
		FUNC0(sk->sk_filter, NULL);
		FUNC3(sk, filter);
		ret = 0;
	}

	return ret;
}