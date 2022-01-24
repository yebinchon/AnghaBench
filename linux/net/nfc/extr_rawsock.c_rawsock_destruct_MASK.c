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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_receive_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  target_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFC_TARGET_MODE_IDLE ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	FUNC3("sk=%p\n", sk);

	if (sk->sk_state == TCP_ESTABLISHED) {
		FUNC0(FUNC2(sk)->dev,
				      FUNC2(sk)->target_idx,
				      NFC_TARGET_MODE_IDLE);
		FUNC1(FUNC2(sk)->dev);
	}

	FUNC5(&sk->sk_receive_queue);

	if (!FUNC6(sk, SOCK_DEAD)) {
		FUNC4("Freeing alive NFC raw socket %p\n", sk);
		return;
	}
}