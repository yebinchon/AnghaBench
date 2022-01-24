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
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct sctp_transport {struct sctp_association* asoc; } ;
struct sctp_comm_param {int /*<<< orphan*/  net_admin; struct nlmsghdr* nlh; struct inet_diag_req_v2* r; struct sk_buff* skb; } ;
struct TYPE_5__ {struct sock* sk; } ;
struct sctp_association {TYPE_2__ base; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct net {int /*<<< orphan*/  diag_nlsk; } ;
struct TYPE_4__ {int /*<<< orphan*/  idiag_cookie; } ;
struct inet_diag_req_v2 {TYPE_1__ id; } ;
struct TYPE_6__ {int /*<<< orphan*/  portid; int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_3__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_association*) ; 
 int FUNC3 (struct sock*,struct sctp_association*,struct sk_buff*,struct inet_diag_req_v2 const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlmsghdr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 
 struct net* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sctp_transport *tsp, void *p)
{
	struct sctp_association *assoc = tsp->asoc;
	struct sock *sk = tsp->asoc->base.sk;
	struct sctp_comm_param *commp = p;
	struct sk_buff *in_skb = commp->skb;
	const struct inet_diag_req_v2 *req = commp->r;
	const struct nlmsghdr *nlh = commp->nlh;
	struct net *net = FUNC11(in_skb->sk);
	struct sk_buff *rep;
	int err;

	err = FUNC10(sk, req->id.idiag_cookie);
	if (err)
		goto out;

	err = -ENOMEM;
	rep = FUNC7(FUNC2(assoc), GFP_KERNEL);
	if (!rep)
		goto out;

	FUNC5(sk);
	if (sk != assoc->base.sk) {
		FUNC8(sk);
		sk = assoc->base.sk;
		FUNC5(sk);
	}
	err = FUNC3(sk, assoc, rep, req,
				  FUNC9(FUNC0(in_skb).sk),
				  FUNC0(in_skb).portid,
				  nlh->nlmsg_seq, 0, nlh,
				  commp->net_admin);
	FUNC8(sk);
	if (err < 0) {
		FUNC1(err == -EMSGSIZE);
		FUNC4(rep);
		goto out;
	}

	err = FUNC6(net->diag_nlsk, rep, FUNC0(in_skb).portid,
			      MSG_DONTWAIT);
	if (err > 0)
		err = 0;
out:
	return err;
}