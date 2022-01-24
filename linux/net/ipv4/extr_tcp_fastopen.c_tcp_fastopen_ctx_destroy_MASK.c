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
struct tcp_fastopen_context {int /*<<< orphan*/  rcu; } ;
struct TYPE_2__ {int /*<<< orphan*/  tcp_fastopen_ctx_lock; int /*<<< orphan*/  tcp_fastopen_ctx; } ;
struct net {TYPE_1__ ipv4; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tcp_fastopen_context* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcp_fastopen_ctx_free ; 

void FUNC6(struct net *net)
{
	struct tcp_fastopen_context *ctxt;

	FUNC4(&net->ipv4.tcp_fastopen_ctx_lock);

	ctxt = FUNC3(net->ipv4.tcp_fastopen_ctx,
				FUNC1(&net->ipv4.tcp_fastopen_ctx_lock));
	FUNC2(net->ipv4.tcp_fastopen_ctx, NULL);
	FUNC5(&net->ipv4.tcp_fastopen_ctx_lock);

	if (ctxt)
		FUNC0(&ctxt->rcu, tcp_fastopen_ctx_free);
}