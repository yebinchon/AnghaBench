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
struct sock {TYPE_1__* sk_prot; } ;
struct TYPE_2__ {int /*<<< orphan*/  orphan_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int FUNC1 (struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 

bool FUNC7(struct sock *sk, struct sock *osk)
{
	bool ok = FUNC1(sk, osk);

	if (ok) {
		FUNC5(FUNC4(sk), sk->sk_prot, 1);
	} else {
		FUNC3(sk->sk_prot->orphan_count);
		FUNC2(sk, TCP_CLOSE);
		FUNC6(sk, SOCK_DEAD);
		FUNC0(sk);
	}
	return ok;
}