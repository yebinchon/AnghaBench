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
struct packet_sock {int running; int /*<<< orphan*/  prot_hook; scalar_t__ fanout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,struct packet_sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct packet_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	struct packet_sock *po = FUNC2(sk);

	if (!po->running) {
		if (po->fanout)
			FUNC0(sk, po);
		else
			FUNC1(&po->prot_hook);

		FUNC3(sk);
		po->running = 1;
	}
}