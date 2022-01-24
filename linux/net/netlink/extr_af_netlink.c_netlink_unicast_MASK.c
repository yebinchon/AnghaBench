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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sock*) ; 
 int FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sock*,struct sk_buff*,long*,struct sock*) ; 
 struct sock* FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sock*) ; 
 int FUNC7 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sock*,struct sk_buff*,struct sock*) ; 
 scalar_t__ FUNC10 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 long FUNC12 (struct sock*,int) ; 

int FUNC13(struct sock *ssk, struct sk_buff *skb,
		    u32 portid, int nonblock)
{
	struct sock *sk;
	int err;
	long timeo;

	skb = FUNC8(skb, FUNC2());

	timeo = FUNC12(ssk, nonblock);
retry:
	sk = FUNC5(ssk, portid);
	if (FUNC0(sk)) {
		FUNC3(skb);
		return FUNC1(sk);
	}
	if (FUNC6(sk))
		return FUNC9(sk, skb, ssk);

	if (FUNC10(sk, skb)) {
		err = skb->len;
		FUNC3(skb);
		FUNC11(sk);
		return err;
	}

	err = FUNC4(sk, skb, &timeo, ssk);
	if (err == 1)
		goto retry;
	if (err)
		return err;

	return FUNC7(sk, skb);
}