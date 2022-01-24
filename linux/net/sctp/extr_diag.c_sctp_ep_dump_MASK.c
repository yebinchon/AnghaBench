#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sock {scalar_t__ sk_family; } ;
struct sk_buff {struct sock* sk; } ;
struct TYPE_5__ {struct sock* sk; } ;
struct sctp_endpoint {int /*<<< orphan*/  asocs; TYPE_1__ base; } ;
struct sctp_comm_param {int /*<<< orphan*/  net_admin; struct inet_diag_req_v2* r; struct netlink_callback* cb; struct sk_buff* skb; } ;
struct netlink_callback {scalar_t__* args; TYPE_3__* nlh; int /*<<< orphan*/  skb; } ;
struct net {int dummy; } ;
struct inet_sock {scalar_t__ inet_sport; scalar_t__ inet_dport; } ;
struct TYPE_6__ {scalar_t__ idiag_sport; scalar_t__ idiag_dport; } ;
struct inet_diag_req_v2 {int idiag_states; scalar_t__ sdiag_family; TYPE_2__ id; } ;
struct TYPE_8__ {int /*<<< orphan*/  portid; int /*<<< orphan*/  sk; } ;
struct TYPE_7__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 TYPE_4__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int TCPF_LISTEN ; 
 scalar_t__ FUNC1 (struct sock*,int /*<<< orphan*/ *,struct sk_buff*,struct inet_diag_req_v2 const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,struct net*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct net* FUNC6 (struct sock*) ; 

__attribute__((used)) static int FUNC7(struct sctp_endpoint *ep, void *p)
{
	struct sctp_comm_param *commp = p;
	struct sock *sk = ep->base.sk;
	struct sk_buff *skb = commp->skb;
	struct netlink_callback *cb = commp->cb;
	const struct inet_diag_req_v2 *r = commp->r;
	struct net *net = FUNC6(skb->sk);
	struct inet_sock *inet = FUNC2(sk);
	int err = 0;

	if (!FUNC4(FUNC6(sk), net))
		goto out;

	if (cb->args[4] < cb->args[1])
		goto next;

	if (!(r->idiag_states & TCPF_LISTEN) && !FUNC3(&ep->asocs))
		goto next;

	if (r->sdiag_family != AF_UNSPEC &&
	    sk->sk_family != r->sdiag_family)
		goto next;

	if (r->id.idiag_sport != inet->inet_sport &&
	    r->id.idiag_sport)
		goto next;

	if (r->id.idiag_dport != inet->inet_dport &&
	    r->id.idiag_dport)
		goto next;

	if (FUNC1(sk, NULL, skb, r,
				FUNC5(FUNC0(cb->skb).sk),
				FUNC0(cb->skb).portid,
				cb->nlh->nlmsg_seq, NLM_F_MULTI,
				cb->nlh, commp->net_admin) < 0) {
		err = 2;
		goto out;
	}
next:
	cb->args[4]++;
out:
	return err;
}