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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dupl_rcvcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff_head*) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*,struct sk_buff_head*) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, struct sk_buff *skb)
{
	unsigned int before = FUNC2(sk);
	struct sk_buff_head xmitq;
	unsigned int added;

	FUNC0(&xmitq);

	FUNC6(sk, skb, &xmitq);
	added = FUNC2(sk) - before;
	FUNC1(added, &FUNC5(sk)->dupl_rcvcnt);

	/* Send pending response/rejected messages, if any */
	FUNC4(FUNC3(sk), &xmitq);
	return 0;
}