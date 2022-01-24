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
struct tcf_net {int /*<<< orphan*/  idr_lock; int /*<<< orphan*/  idr; } ;
struct tcf_block {int /*<<< orphan*/  index; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tcf_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcf_net_id ; 

__attribute__((used)) static void FUNC4(struct tcf_block *block, struct net *net)
{
	struct tcf_net *tn = FUNC1(net, tcf_net_id);

	FUNC2(&tn->idr_lock);
	FUNC0(&tn->idr, block->index);
	FUNC3(&tn->idr_lock);
}