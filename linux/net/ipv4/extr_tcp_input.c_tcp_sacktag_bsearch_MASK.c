#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {struct rb_node* rb_node; } ;
struct sock {TYPE_1__ tcp_rtx_queue; } ;
struct sk_buff {int dummy; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct TYPE_4__ {int /*<<< orphan*/  end_seq; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct rb_node*) ; 

__attribute__((used)) static struct sk_buff *FUNC3(struct sock *sk, u32 seq)
{
	struct rb_node *parent, **p = &sk->tcp_rtx_queue.rb_node;
	struct sk_buff *skb;

	while (*p) {
		parent = *p;
		skb = FUNC2(parent);
		if (FUNC1(seq, FUNC0(skb)->seq)) {
			p = &parent->rb_left;
			continue;
		}
		if (!FUNC1(seq, FUNC0(skb)->end_seq)) {
			p = &parent->rb_right;
			continue;
		}
		return skb;
	}
	return NULL;
}