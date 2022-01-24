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
struct sk_psock {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  ingress_skb; int /*<<< orphan*/  ingress_msg; int /*<<< orphan*/  work; int /*<<< orphan*/  link_lock; int /*<<< orphan*/  link; int /*<<< orphan*/  eval; struct sock* sk; } ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SK_PSOCK_TX_ENABLED ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  __SK_NONE ; 
 struct sk_psock* FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_psock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sk_psock_backlog ; 
 int /*<<< orphan*/  FUNC5 (struct sk_psock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct sk_psock *FUNC9(struct sock *sk, int node)
{
	struct sk_psock *psock = FUNC2(sizeof(*psock),
					      GFP_ATOMIC | __GFP_NOWARN,
					      node);
	if (!psock)
		return NULL;

	psock->sk = sk;
	psock->eval =  __SK_NONE;

	FUNC0(&psock->link);
	FUNC8(&psock->link_lock);

	FUNC1(&psock->work, sk_psock_backlog);
	FUNC0(&psock->ingress_msg);
	FUNC6(&psock->ingress_skb);

	FUNC5(psock, SK_PSOCK_TX_ENABLED);
	FUNC4(&psock->refcnt, 1);

	FUNC3(sk, psock);
	FUNC7(sk);

	return psock;
}