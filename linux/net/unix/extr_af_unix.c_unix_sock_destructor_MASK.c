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
struct unix_sock {scalar_t__ addr; } ;
struct sock {int sk_socket; int /*<<< orphan*/  sk_prot; int /*<<< orphan*/  sk_wmem_alloc; int /*<<< orphan*/  sk_receive_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct sock*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  unix_nr_socks ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 struct unix_sock* FUNC14 (struct sock*) ; 

__attribute__((used)) static void FUNC15(struct sock *sk)
{
	struct unix_sock *u = FUNC14(sk);

	FUNC9(&sk->sk_receive_queue);

	FUNC0(FUNC7(&sk->sk_wmem_alloc));
	FUNC0(!FUNC8(sk));
	FUNC0(sk->sk_socket);
	if (!FUNC10(sk, SOCK_DEAD)) {
		FUNC6("Attempt to release alive unix socket: %p\n", sk);
		return;
	}

	if (u->addr)
		FUNC13(u->addr);

	FUNC1(&unix_nr_socks);
	FUNC3();
	FUNC12(FUNC11(sk), sk->sk_prot, -1);
	FUNC4();
#ifdef UNIX_REFCNT_DEBUG
	pr_debug("UNIX %p is destroyed, %ld are still alive.\n", sk,
		atomic_long_read(&unix_nr_socks));
#endif
}