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
struct sock {int /*<<< orphan*/  sk_filter; } ;
struct sk_filter {int /*<<< orphan*/  prog; } ;
struct sk_buff {struct sock* sk; } ;

/* Variables and functions */
 int FUNC0 (struct sock*,struct sk_buff*) ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  LINUX_MIB_PFMEMALLOCDROP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_MEMALLOC ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_filter* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 

int FUNC12(struct sock *sk, struct sk_buff *skb, unsigned int cap)
{
	int err;
	struct sk_filter *filter;

	/*
	 * If the skb was allocated from pfmemalloc reserves, only
	 * allow SOCK_MEMALLOC sockets to use it as this socket is
	 * helping free memory
	 */
	if (FUNC9(skb) && !FUNC10(sk, SOCK_MEMALLOC)) {
		FUNC1(FUNC11(sk), LINUX_MIB_PFMEMALLOCDROP);
		return -ENOMEM;
	}
	err = FUNC0(sk, skb);
	if (err)
		return err;

	err = FUNC8(sk, skb);
	if (err)
		return err;

	FUNC6();
	filter = FUNC5(sk->sk_filter);
	if (filter) {
		struct sock *save_sk = skb->sk;
		unsigned int pkt_len;

		skb->sk = sk;
		pkt_len = FUNC2(filter->prog, skb);
		skb->sk = save_sk;
		err = pkt_len ? FUNC4(skb, FUNC3(cap, pkt_len)) : -EPERM;
	}
	FUNC7();

	return err;
}