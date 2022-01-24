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
typedef  int u32 ;
struct westwood {int /*<<< orphan*/  bk; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int CA_ACK_SLOWPATH ; 
 struct westwood* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct westwood*) ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, u32 ack_flags)
{
	if (ack_flags & CA_ACK_SLOWPATH) {
		struct westwood *w = FUNC0(sk);

		FUNC4(sk);
		w->bk += FUNC2(sk);

		FUNC1(w);
		return;
	}

	FUNC3(sk);
}