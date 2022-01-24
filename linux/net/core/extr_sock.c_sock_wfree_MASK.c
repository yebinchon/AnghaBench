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
struct sock {int /*<<< orphan*/  sk_wmem_alloc; int /*<<< orphan*/  (* sk_write_space ) (struct sock*) ;} ;
struct sk_buff {unsigned int truesize; struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_USE_WRITE_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

void FUNC5(struct sk_buff *skb)
{
	struct sock *sk = skb->sk;
	unsigned int len = skb->truesize;

	if (!FUNC3(sk, SOCK_USE_WRITE_QUEUE)) {
		/*
		 * Keep a reference on sk_wmem_alloc, this will be released
		 * after sk_write_space() call
		 */
		FUNC0(FUNC2(len - 1, &sk->sk_wmem_alloc));
		sk->sk_write_space(sk);
		len = 1;
	}
	/*
	 * if sk_wmem_alloc reaches 0, we must finish what sk_free()
	 * could not do because of in-flight packets
	 */
	if (FUNC2(len, &sk->sk_wmem_alloc))
		FUNC1(sk);
}