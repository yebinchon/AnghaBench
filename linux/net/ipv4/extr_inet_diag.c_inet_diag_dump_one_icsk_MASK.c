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
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct net {int /*<<< orphan*/  diag_nlsk; } ;
struct inet_hashinfo {int dummy; } ;
struct inet_diag_req_v2 {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_1__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct sock* FUNC4 (struct net*,struct inet_hashinfo*,struct inet_diag_req_v2 const*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct inet_diag_req_v2 const*,int) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sock*,struct sk_buff*,struct inet_diag_req_v2 const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlmsghdr const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 struct net* FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(struct inet_hashinfo *hashinfo,
			    struct sk_buff *in_skb,
			    const struct nlmsghdr *nlh,
			    const struct inet_diag_req_v2 *req)
{
	bool net_admin = FUNC6(in_skb, CAP_NET_ADMIN);
	struct net *net = FUNC13(in_skb->sk);
	struct sk_buff *rep;
	struct sock *sk;
	int err;

	sk = FUNC4(net, hashinfo, req);
	if (FUNC0(sk))
		return FUNC2(sk);

	rep = FUNC9(FUNC5(sk, req, net_admin), GFP_KERNEL);
	if (!rep) {
		err = -ENOMEM;
		goto out;
	}

	err = FUNC10(sk, rep, req,
			   FUNC11(FUNC1(in_skb).sk),
			   FUNC1(in_skb).portid,
			   nlh->nlmsg_seq, 0, nlh, net_admin);
	if (err < 0) {
		FUNC3(err == -EMSGSIZE);
		FUNC8(rep);
		goto out;
	}
	err = FUNC7(net->diag_nlsk, rep, FUNC1(in_skb).portid,
			      MSG_DONTWAIT);
	if (err > 0)
		err = 0;

out:
	if (sk)
		FUNC12(sk);

	return err;
}