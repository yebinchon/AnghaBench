#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ len; int /*<<< orphan*/ * tail; int /*<<< orphan*/  head; } ;
struct sock {int sk_userlocks; int sk_flags; TYPE_2__* sk_prot; int /*<<< orphan*/  sk_wq; int /*<<< orphan*/  sk_refcnt; int /*<<< orphan*/  sk_net_refcnt; int /*<<< orphan*/  sk_incoming_cpu; scalar_t__ sk_priority; scalar_t__ sk_err_soft; scalar_t__ sk_err; int /*<<< orphan*/  sk_reuseport_cb; int /*<<< orphan*/  sk_filter; int /*<<< orphan*/  sk_cgrp_data; int /*<<< orphan*/  sk_zckey; int /*<<< orphan*/ * sk_send_head; int /*<<< orphan*/  sk_drops; scalar_t__ sk_forward_alloc; scalar_t__ sk_wmem_queued; scalar_t__ sk_dst_pending_confirm; int /*<<< orphan*/ * sk_dst_cache; int /*<<< orphan*/  sk_omem_alloc; int /*<<< orphan*/  sk_wmem_alloc; int /*<<< orphan*/  sk_rmem_alloc; TYPE_1__ sk_backlog; int /*<<< orphan*/  sk_node; TYPE_2__* sk_prot_creator; int /*<<< orphan*/  sk_family; } ;
struct sk_filter {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {scalar_t__ sockets_allocated; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sk_filter*) ; 
 int SK_FLAGS_TIMESTAMP ; 
 int SOCK_BINDPORT_LOCK ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sock const*,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct sk_filter* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (struct sock*,struct sk_filter*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 struct sock* FUNC18 (TYPE_2__*,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (struct sock*,struct sock const*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (struct sock*) ; 
 scalar_t__ FUNC26 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC27 (struct sock*) ; 
 int /*<<< orphan*/  FUNC28 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int) ; 
 scalar_t__ FUNC30 (struct sock*,struct sock const*) ; 

struct sock *FUNC31(const struct sock *sk, const gfp_t priority)
{
	struct sock *newsk;
	bool is_charged = true;

	newsk = FUNC18(sk->sk_prot, priority, sk->sk_family);
	if (newsk != NULL) {
		struct sk_filter *filter;

		FUNC23(newsk, sk);

		newsk->sk_prot_creator = sk->sk_prot;

		/* SANITY */
		if (FUNC6(newsk->sk_net_refcnt))
			FUNC5(FUNC27(newsk));
		FUNC17(&newsk->sk_node);
		FUNC25(newsk);
		FUNC2(newsk);
		newsk->sk_backlog.head	= *(newsk->sk_backlog.tail = NULL);
		newsk->sk_backlog.len = 0;

		FUNC1(&newsk->sk_rmem_alloc, 0);
		/*
		 * sk_wmem_alloc set to one (see sk_free() and sock_wfree())
		 */
		FUNC13(&newsk->sk_wmem_alloc, 1);
		FUNC1(&newsk->sk_omem_alloc, 0);
		FUNC16(newsk);

		newsk->sk_dst_cache	= NULL;
		newsk->sk_dst_pending_confirm = 0;
		newsk->sk_wmem_queued	= 0;
		newsk->sk_forward_alloc = 0;
		FUNC1(&newsk->sk_drops, 0);
		newsk->sk_send_head	= NULL;
		newsk->sk_userlocks	= sk->sk_userlocks & ~SOCK_BINDPORT_LOCK;
		FUNC1(&newsk->sk_zckey, 0);

		FUNC28(newsk, SOCK_DONE);
		FUNC7(newsk);
		FUNC4(&newsk->sk_cgrp_data);

		FUNC11();
		filter = FUNC10(sk->sk_filter);
		if (filter != NULL)
			/* though it's an empty new sock, the charging may fail
			 * if sysctl_optmem_max was changed between creation of
			 * original socket and cloning
			 */
			is_charged = FUNC14(newsk, filter);
		FUNC0(newsk->sk_filter, filter);
		FUNC12();

		if (FUNC29(!is_charged || FUNC30(newsk, sk))) {
			/* We need to make sure that we don't uncharge the new
			 * socket if we couldn't charge it in the first place
			 * as otherwise we uncharge the parent's filter.
			 */
			if (!is_charged)
				FUNC0(newsk->sk_filter, NULL);
			FUNC15(newsk);
			newsk = NULL;
			goto out;
		}
		FUNC0(newsk->sk_reuseport_cb, NULL);

		if (FUNC3(sk, newsk)) {
			FUNC15(newsk);
			newsk = NULL;
			goto out;
		}

		newsk->sk_err	   = 0;
		newsk->sk_err_soft = 0;
		newsk->sk_priority = 0;
		newsk->sk_incoming_cpu = FUNC9();
		if (FUNC6(newsk->sk_net_refcnt))
			FUNC24(FUNC27(newsk), 1);

		/*
		 * Before updating sk_refcnt, we must commit prior changes to memory
		 * (Documentation/RCU/rculist_nulls.txt for details)
		 */
		FUNC22();
		FUNC13(&newsk->sk_refcnt, 2);

		/*
		 * Increment the counter in the same struct proto as the master
		 * sock (sk_refcnt_debug_inc uses newsk->sk_prot->socks, that
		 * is the same as sk->sk_prot->socks, as this field was copied
		 * with memcpy).
		 *
		 * This _changes_ the previous behaviour, where
		 * tcp_create_openreq_child always was incrementing the
		 * equivalent to tcp_prot->socks (inet_sock_nr), so this have
		 * to be taken into account in all callers. -acme
		 */
		FUNC19(newsk);
		FUNC20(newsk, NULL);
		FUNC0(newsk->sk_wq, NULL);

		if (newsk->sk_prot->sockets_allocated)
			FUNC21(newsk);

		if (FUNC26(sk) &&
		    newsk->sk_flags & SK_FLAGS_TIMESTAMP)
			FUNC8();
	}
out:
	return newsk;
}