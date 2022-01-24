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
struct sock {int /*<<< orphan*/  sk_wmem_alloc; } ;
struct sk_buff {scalar_t__ destructor; int truesize; struct sock* sk; int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ sock_efree ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC8(struct sk_buff *nskb, struct sk_buff *skb, int headln)
{
	struct sock *sk = skb->sk;
	int delta;

	FUNC5(nskb, skb);

	FUNC6(nskb, skb->len);
	FUNC2(nskb->data, skb->data, headln);

	nskb->destructor = skb->destructor;
	nskb->sk = sk;
	skb->destructor = NULL;
	skb->sk = NULL;

	FUNC7(nskb, headln);

	/* sock_efree means skb must gone through skb_orphan_partial() */
	if (nskb->destructor == sock_efree)
		return;

	delta = nskb->truesize - skb->truesize;
	if (FUNC1(delta < 0))
		FUNC0(FUNC4(-delta, &sk->sk_wmem_alloc));
	else if (delta)
		FUNC3(delta, &sk->sk_wmem_alloc);
}