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
struct sock {int sk_family; int sk_kern_sock; int sk_net_refcnt; int /*<<< orphan*/  sk_cgrp_data; int /*<<< orphan*/  sk_wmem_alloc; struct proto* sk_prot_creator; struct proto* sk_prot; } ;
struct proto {int dummy; } ;
struct net {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct sock* FUNC5 (struct proto*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct net*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

struct sock *FUNC11(struct net *net, int family, gfp_t priority,
		      struct proto *prot, int kern)
{
	struct sock *sk;

	sk = FUNC5(prot, priority | __GFP_ZERO, family);
	if (sk) {
		sk->sk_family = family;
		/*
		 * See comment in struct sock definition to understand
		 * why we need sk_prot_creator -acme
		 */
		sk->sk_prot = sk->sk_prot_creator = prot;
		sk->sk_kern_sock = kern;
		FUNC7(sk);
		sk->sk_net_refcnt = kern ? 0 : 1;
		if (FUNC2(sk->sk_net_refcnt)) {
			FUNC1(net);
			FUNC6(net, 1);
		}

		FUNC8(sk, net);
		FUNC4(&sk->sk_wmem_alloc, 1);

		FUNC3(sk);
		FUNC0(&sk->sk_cgrp_data);
		FUNC9(&sk->sk_cgrp_data);
		FUNC10(&sk->sk_cgrp_data);
	}

	return sk;
}