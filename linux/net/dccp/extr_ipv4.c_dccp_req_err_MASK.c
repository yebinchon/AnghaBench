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
typedef  int /*<<< orphan*/  u64 ;
struct sock {int dummy; } ;
struct request_sock {int /*<<< orphan*/  rsk_listener; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dreq_gss; int /*<<< orphan*/  dreq_iss; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_OUTOFWINDOWICMPS ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct request_sock*) ; 
 struct request_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct request_sock*) ; 
 struct net* FUNC6 (struct sock*) ; 

void FUNC7(struct sock *sk, u64 seq)
	{
	struct request_sock *req = FUNC4(sk);
	struct net *net = FUNC6(sk);

	/*
	 * ICMPs are not backlogged, hence we cannot get an established
	 * socket here.
	 */
	if (!FUNC1(seq, FUNC2(req)->dreq_iss, FUNC2(req)->dreq_gss)) {
		FUNC0(net, LINUX_MIB_OUTOFWINDOWICMPS);
	} else {
		/*
		 * Still in RESPOND, just remove it silently.
		 * There is no good way to pass the error to the newly
		 * created socket, and POSIX does not want network
		 * errors returned from accept().
		 */
		FUNC3(req->rsk_listener, req);
	}
	FUNC5(req);
}