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
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct io_ring_ctx {int nr_user_files; int /*<<< orphan*/ * user_files; TYPE_1__* ring_sock; } ;
struct TYPE_2__ {struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct io_ring_ctx *ctx)
{
#if defined(CONFIG_UNIX)
	if (ctx->ring_sock) {
		struct sock *sock = ctx->ring_sock->sk;
		struct sk_buff *skb;

		while ((skb = skb_dequeue(&sock->sk_receive_queue)) != NULL)
			kfree_skb(skb);
	}
#else
	int i;

	for (i = 0; i < ctx->nr_user_files; i++)
		FUNC0(ctx->user_files[i]);
#endif
}