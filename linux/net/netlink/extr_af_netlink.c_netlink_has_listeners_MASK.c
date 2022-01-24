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
struct sock {size_t sk_protocol; } ;
struct listeners {int /*<<< orphan*/  masks; } ;
struct TYPE_2__ {unsigned int groups; int /*<<< orphan*/  listeners; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 TYPE_1__* nl_table ; 
 struct listeners* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 

int FUNC6(struct sock *sk, unsigned int group)
{
	int res = 0;
	struct listeners *listeners;

	FUNC0(!FUNC1(sk));

	FUNC3();
	listeners = FUNC2(nl_table[sk->sk_protocol].listeners);

	if (listeners && group - 1 < nl_table[sk->sk_protocol].groups)
		res = FUNC5(group - 1, listeners->masks);

	FUNC4();

	return res;
}