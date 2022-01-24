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
struct packet_sock {int /*<<< orphan*/  bind_lock; int /*<<< orphan*/  prot_hook; scalar_t__ fanout; scalar_t__ running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct packet_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct packet_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct sock *sk, bool sync)
{
	struct packet_sock *po = FUNC4(sk);

	FUNC3(&po->bind_lock);

	po->running = 0;

	if (po->fanout)
		FUNC1(sk, po);
	else
		FUNC0(&po->prot_hook);

	FUNC2(sk);

	if (sync) {
		FUNC6(&po->bind_lock);
		FUNC7();
		FUNC5(&po->bind_lock);
	}
}