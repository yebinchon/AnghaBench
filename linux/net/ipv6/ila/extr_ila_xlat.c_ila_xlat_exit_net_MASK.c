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
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ hooks_registered; int /*<<< orphan*/  locks; int /*<<< orphan*/  rhash_table; } ;
struct ila_net {TYPE_1__ xlat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ila_free_cb ; 
 int /*<<< orphan*/  ila_net_id ; 
 int /*<<< orphan*/  ila_nf_hook_ops ; 
 struct ila_net* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct net *net)
{
	struct ila_net *ilan = FUNC2(net, ila_net_id);

	FUNC4(&ilan->xlat.rhash_table, ila_free_cb, NULL);

	FUNC1(ilan->xlat.locks);

	if (ilan->xlat.hooks_registered)
		FUNC3(net, ila_nf_hook_ops,
					FUNC0(ila_nf_hook_ops));
}