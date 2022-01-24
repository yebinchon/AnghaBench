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
struct sock {int /*<<< orphan*/  tcp_rtx_queue; } ;
struct sk_buff {int dummy; } ;
struct rb_node {int dummy; } ;

/* Variables and functions */
 struct rb_node* FUNC0 (int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC1 (struct rb_node*) ; 
 struct sk_buff* FUNC2 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct rb_node *p = FUNC0(&sk->tcp_rtx_queue);

	while (p) {
		struct sk_buff *skb = FUNC2(p);

		p = FUNC1(p);
		/* Since we are deleting whole queue, no need to
		 * list_del(&skb->tcp_tsorted_anchor)
		 */
		FUNC4(skb, sk);
		FUNC3(sk, skb);
	}
}