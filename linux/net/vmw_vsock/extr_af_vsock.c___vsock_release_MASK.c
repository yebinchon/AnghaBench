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
struct vsock_sock {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_shutdown; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release ) (struct vsock_sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SHUTDOWN_MASK ; 
 int SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct vsock_sock*) ; 
 TYPE_1__* transport ; 
 struct sock* FUNC7 (struct sock*) ; 
 struct vsock_sock* FUNC8 (struct sock*) ; 

__attribute__((used)) static void FUNC9(struct sock *sk, int level)
{
	if (sk) {
		struct sk_buff *skb;
		struct sock *pending;
		struct vsock_sock *vsk;

		vsk = FUNC8(sk);
		pending = NULL;	/* Compiler warning. */

		/* The release call is supposed to use lock_sock_nested()
		 * rather than lock_sock(), if a sock lock should be acquired.
		 */
		transport->release(vsk);

		/* When "level" is SINGLE_DEPTH_NESTING, use the nested
		 * version to avoid the warning "possible recursive locking
		 * detected". When "level" is 0, lock_sock_nested(sk, level)
		 * is the same as lock_sock(sk).
		 */
		FUNC1(sk, level);
		FUNC4(sk);
		sk->sk_shutdown = SHUTDOWN_MASK;

		while ((skb = FUNC3(&sk->sk_receive_queue)))
			FUNC0(skb);

		/* Clean up any sockets that never were accepted. */
		while ((pending = FUNC7(sk)) != NULL) {
			FUNC9(pending, SINGLE_DEPTH_NESTING);
			FUNC5(pending);
		}

		FUNC2(sk);
		FUNC5(sk);
	}
}