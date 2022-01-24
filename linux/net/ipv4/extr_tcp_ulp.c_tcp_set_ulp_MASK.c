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
struct tcp_ulp_ops {int dummy; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct sock*,struct tcp_ulp_ops const*) ; 
 struct tcp_ulp_ops* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

int FUNC3(struct sock *sk, const char *name)
{
	const struct tcp_ulp_ops *ulp_ops;

	FUNC2(sk);

	ulp_ops = FUNC1(name);
	if (!ulp_ops)
		return -ENOENT;

	return FUNC0(sk, ulp_ops);
}