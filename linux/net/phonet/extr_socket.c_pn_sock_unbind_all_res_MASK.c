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
struct sock {int dummy; } ;
struct TYPE_2__ {struct sock** sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ pnres ; 
 int /*<<< orphan*/  resource_mutex ; 

void FUNC4(struct sock *sk)
{
	unsigned int res, match = 0;

	FUNC2(&resource_mutex);
	for (res = 0; res < 256; res++) {
		if (pnres.sk[res] == sk) {
			FUNC0(pnres.sk[res], NULL);
			match++;
		}
	}
	FUNC3(&resource_mutex);

	while (match > 0) {
		FUNC1(sk);
		match--;
	}
	/* Caller is responsible for RCU sync before final sock_put() */
}