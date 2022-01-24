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
struct dn_scp {int /*<<< orphan*/  persist; int /*<<< orphan*/  other_xmit_queue; int /*<<< orphan*/  data_xmit_queue; } ;

/* Variables and functions */
 struct dn_scp* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct sock *sk)
{
	struct dn_scp *scp = FUNC0(sk);

	FUNC1(sk);

	if (!FUNC3(&scp->data_xmit_queue) ||
	    !FUNC3(&scp->other_xmit_queue))
		scp->persist = FUNC2(sk);

	return 0;
}