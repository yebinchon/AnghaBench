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
struct sk_psock {int /*<<< orphan*/  ingress_msg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_psock*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct sk_psock* FUNC4 (struct sock const*) ; 

__attribute__((used)) static bool FUNC5(const struct sock *sk)
{
	struct sk_psock *psock;
	bool empty = true;

	FUNC2();
	psock = FUNC4(sk);
	if (FUNC0(psock))
		empty = FUNC1(&psock->ingress_msg);
	FUNC3();
	return !empty;
}