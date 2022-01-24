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
struct unix_diag_req {scalar_t__ udiag_ino; int /*<<< orphan*/  udiag_cookie; } ;
struct unix_diag_msg {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {struct sock* sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct net {int /*<<< orphan*/  diag_nlsk; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct net*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sock*,struct sk_buff*,struct unix_diag_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 struct net* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 struct sock* FUNC9 (scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *in_skb,
			       const struct nlmsghdr *nlh,
			       struct unix_diag_req *req)
{
	int err = -EINVAL;
	struct sock *sk;
	struct sk_buff *rep;
	unsigned int extra_len;
	struct net *net = FUNC7(in_skb->sk);

	if (req->udiag_ino == 0)
		goto out_nosk;

	sk = FUNC9(req->udiag_ino);
	err = -ENOENT;
	if (sk == NULL)
		goto out_nosk;
	if (!FUNC1(FUNC7(sk), net))
		goto out;

	err = FUNC6(sk, req->udiag_cookie);
	if (err)
		goto out;

	extra_len = 256;
again:
	err = -ENOMEM;
	rep = FUNC4(sizeof(struct unix_diag_msg) + extra_len, GFP_KERNEL);
	if (!rep)
		goto out;

	err = FUNC5(sk, rep, req, FUNC0(in_skb).portid,
			   nlh->nlmsg_seq, 0, req->udiag_ino);
	if (err < 0) {
		FUNC3(rep);
		extra_len += 256;
		if (extra_len >= PAGE_SIZE)
			goto out;

		goto again;
	}
	err = FUNC2(net->diag_nlsk, rep, FUNC0(in_skb).portid,
			      MSG_DONTWAIT);
	if (err > 0)
		err = 0;
out:
	if (sk)
		FUNC8(sk);
out_nosk:
	return err;
}