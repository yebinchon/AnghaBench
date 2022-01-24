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
struct inet_diag_req_v2 {int dummy; } ;
struct inet_diag_msg {int dummy; } ;
struct inet_diag_meminfo {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_1__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sock*) ; 
 int FUNC3 (struct sock*,int /*<<< orphan*/ *,struct sk_buff*,struct inet_diag_req_v2 const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlmsghdr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct sock* FUNC8 (struct net*,struct inet_diag_req_v2 const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct net* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *in_skb,
			     const struct nlmsghdr *nlh,
			     const struct inet_diag_req_v2 *r)
{
	struct net *net = FUNC10(in_skb->sk);
	struct sk_buff *rep;
	struct sock *sk;
	int err;

	sk = FUNC8(net, r);
	if (FUNC0(sk))
		return FUNC2(sk);

	rep = FUNC7(sizeof(struct inet_diag_msg) +
			sizeof(struct inet_diag_meminfo) + 64,
			GFP_KERNEL);
	if (!rep) {
		FUNC11(sk);
		return -ENOMEM;
	}

	err = FUNC3(sk, NULL, rep, r,
				FUNC9(FUNC1(in_skb).sk),
				FUNC1(in_skb).portid,
				nlh->nlmsg_seq, 0, nlh,
				FUNC5(in_skb, CAP_NET_ADMIN));
	FUNC11(sk);

	if (err < 0) {
		FUNC4(rep);
		return err;
	}

	err = FUNC6(net->diag_nlsk, rep,
			      FUNC1(in_skb).portid,
			      MSG_DONTWAIT);
	if (err > 0)
		err = 0;
	return err;
}