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
struct sock {int /*<<< orphan*/  sk_destruct; } ;
struct pep_sock {int init_enable; scalar_t__ aligned; int /*<<< orphan*/  tx_fc; int /*<<< orphan*/  rx_fc; scalar_t__ rx_credits; int /*<<< orphan*/  pipe_handle; scalar_t__ peer_type; scalar_t__ ifindex; int /*<<< orphan*/  tx_credits; int /*<<< orphan*/  ctrlreq_queue; int /*<<< orphan*/ * listener; int /*<<< orphan*/  hlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PN_LEGACY_FLOW_CONTROL ; 
 int /*<<< orphan*/  PN_PIPE_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pep_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  pipe_destruct ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct sock *sk)
{
	struct pep_sock *pn = FUNC2(sk);

	sk->sk_destruct = pipe_destruct;
	FUNC0(&pn->hlist);
	pn->listener = NULL;
	FUNC3(&pn->ctrlreq_queue);
	FUNC1(&pn->tx_credits, 0);
	pn->ifindex = 0;
	pn->peer_type = 0;
	pn->pipe_handle = PN_PIPE_INVALID_HANDLE;
	pn->rx_credits = 0;
	pn->rx_fc = pn->tx_fc = PN_LEGACY_FLOW_CONTROL;
	pn->init_enable = 1;
	pn->aligned = 0;
	return 0;
}