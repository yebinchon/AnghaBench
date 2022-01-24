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
struct socket {struct sock* sk; } ;
struct sock {int sk_sndbuf; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xfrm_cfg_mutex; } ;
struct net {TYPE_1__ xfrm; } ;
struct msghdr {int msg_flags; } ;

/* Variables and functions */
 int EFAULT ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MSG_OOB ; 
 struct sk_buff* FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct msghdr*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct sadb_msg*,int,struct sock*) ; 
 struct sadb_msg* FUNC6 (struct sk_buff*,int*) ; 
 int FUNC7 (struct sock*,struct sk_buff*,struct sadb_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,size_t) ; 
 struct net* FUNC9 (struct sock*) ; 

__attribute__((used)) static int FUNC10(struct socket *sock, struct msghdr *msg, size_t len)
{
	struct sock *sk = sock->sk;
	struct sk_buff *skb = NULL;
	struct sadb_msg *hdr = NULL;
	int err;
	struct net *net = FUNC9(sk);

	err = -EOPNOTSUPP;
	if (msg->msg_flags & MSG_OOB)
		goto out;

	err = -EMSGSIZE;
	if ((unsigned int)len > sk->sk_sndbuf - 32)
		goto out;

	err = -ENOBUFS;
	skb = FUNC0(len, GFP_KERNEL);
	if (skb == NULL)
		goto out;

	err = -EFAULT;
	if (FUNC2(FUNC8(skb,len), msg, len))
		goto out;

	hdr = FUNC6(skb, &err);
	if (!hdr)
		goto out;

	FUNC3(&net->xfrm.xfrm_cfg_mutex);
	err = FUNC7(sk, skb, hdr);
	FUNC4(&net->xfrm.xfrm_cfg_mutex);

out:
	if (err && hdr && FUNC5(hdr, err, sk) == 0)
		err = 0;
	FUNC1(skb);

	return err ? : len;
}