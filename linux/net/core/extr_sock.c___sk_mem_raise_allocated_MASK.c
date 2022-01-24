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
typedef  long u64 ;
struct sock {scalar_t__ sk_type; int sk_wmem_queued; scalar_t__ sk_forward_alloc; scalar_t__ sk_sndbuf; scalar_t__ sk_memcg; int /*<<< orphan*/  sk_rmem_alloc; int /*<<< orphan*/  sk_wmem_alloc; struct proto* sk_prot; } ;
struct proto {int dummy; } ;

/* Variables and functions */
 int SK_MEM_RECV ; 
 int SK_MEM_SEND ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__,int) ; 
 scalar_t__ mem_cgroup_sockets_enabled ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sock*,struct proto*) ; 
 int FUNC6 (struct sock*,struct proto*) ; 
 scalar_t__ FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 long FUNC9 (scalar_t__) ; 
 long FUNC10 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int) ; 
 long FUNC12 (struct sock*,int) ; 
 long FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,struct proto*,long,int) ; 

int FUNC17(struct sock *sk, int size, int amt, int kind)
{
	struct proto *prot = sk->sk_prot;
	long allocated = FUNC10(sk, amt);
	bool charged = true;

	if (mem_cgroup_sockets_enabled && sk->sk_memcg &&
	    !(charged = FUNC1(sk->sk_memcg, amt)))
		goto suppress_allocation;

	/* Under limit. */
	if (allocated <= FUNC12(sk, 0)) {
		FUNC8(sk);
		return 1;
	}

	/* Under pressure. */
	if (allocated > FUNC12(sk, 1))
		FUNC4(sk);

	/* Over hard limit. */
	if (allocated > FUNC12(sk, 2))
		goto suppress_allocation;

	/* guarantee minimum buffer size under pressure */
	if (kind == SK_MEM_RECV) {
		if (FUNC0(&sk->sk_rmem_alloc) < FUNC5(sk, prot))
			return 1;

	} else { /* SK_MEM_SEND */
		int wmem0 = FUNC6(sk, prot);

		if (sk->sk_type == SOCK_STREAM) {
			if (sk->sk_wmem_queued < wmem0)
				return 1;
		} else if (FUNC3(&sk->sk_wmem_alloc) < wmem0) {
				return 1;
		}
	}

	if (FUNC7(sk)) {
		u64 alloc;

		if (!FUNC15(sk))
			return 1;
		alloc = FUNC13(sk);
		if (FUNC12(sk, 2) > alloc *
		    FUNC9(sk->sk_wmem_queued +
				 FUNC0(&sk->sk_rmem_alloc) +
				 sk->sk_forward_alloc))
			return 1;
	}

suppress_allocation:

	if (kind == SK_MEM_SEND && sk->sk_type == SOCK_STREAM) {
		FUNC14(sk);

		/* Fail only if socket is _under_ its sndbuf.
		 * In this case we cannot block, so that we have to fail.
		 */
		if (sk->sk_wmem_queued + size >= sk->sk_sndbuf)
			return 1;
	}

	if (kind == SK_MEM_SEND || (kind == SK_MEM_RECV && charged))
		FUNC16(sk, prot, allocated, kind);

	FUNC11(sk, amt);

	if (mem_cgroup_sockets_enabled && sk->sk_memcg)
		FUNC2(sk->sk_memcg, amt);

	return 0;
}