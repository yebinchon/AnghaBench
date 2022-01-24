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
struct sock {int (* sk_backlog_rcv ) (struct sock*,struct sk_buff*) ;} ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SOCK_MEMALLOC ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sock*,struct sk_buff*) ; 

int FUNC5(struct sock *sk, struct sk_buff *skb)
{
	int ret;
	unsigned int noreclaim_flag;

	/* these should have been dropped before queueing */
	FUNC0(!FUNC3(sk, SOCK_MEMALLOC));

	noreclaim_flag = FUNC2();
	ret = sk->sk_backlog_rcv(sk, skb);
	FUNC1(noreclaim_flag);

	return ret;
}