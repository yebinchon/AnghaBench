#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {scalar_t__ sk_protocol; TYPE_1__* sk_prot; } ;
struct request_sock {struct sock* rsk_listener; } ;
struct TYPE_6__ {scalar_t__ tfo_listener; } ;
struct TYPE_5__ {int /*<<< orphan*/  fastopen_rsk; } ;
struct TYPE_4__ {int /*<<< orphan*/  orphan_count; int /*<<< orphan*/  (* disconnect ) (struct sock*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IPPROTO_TCP ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct request_sock* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (struct request_sock*) ; 
 TYPE_2__* FUNC8 (struct sock*) ; 

__attribute__((used)) static void FUNC9(struct sock *sk, struct request_sock *req,
			      struct sock *child)
{
	sk->sk_prot->disconnect(child, O_NONBLOCK);

	FUNC5(child);

	FUNC3(sk->sk_prot->orphan_count);

	if (sk->sk_protocol == IPPROTO_TCP && FUNC7(req)->tfo_listener) {
		FUNC0(FUNC4(FUNC8(child)->fastopen_rsk) != req);
		FUNC0(sk != req->rsk_listener);

		/* Paranoid, to prevent race condition if
		 * an inbound pkt destined for child is
		 * blocked by sock lock in tcp_v4_rcv().
		 * Also to satisfy an assertion in
		 * tcp_v4_destroy_sock().
		 */
		FUNC1(FUNC8(child)->fastopen_rsk, NULL);
	}
	FUNC2(child);
}