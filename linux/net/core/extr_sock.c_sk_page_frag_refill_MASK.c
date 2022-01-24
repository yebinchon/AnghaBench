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
struct sock {int /*<<< orphan*/  sk_allocation; } ;
struct page_frag {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct page_frag*,int /*<<< orphan*/ ) ; 

bool FUNC4(struct sock *sk, struct page_frag *pfrag)
{
	if (FUNC0(FUNC3(32U, pfrag, sk->sk_allocation)))
		return true;

	FUNC1(sk);
	FUNC2(sk);
	return false;
}