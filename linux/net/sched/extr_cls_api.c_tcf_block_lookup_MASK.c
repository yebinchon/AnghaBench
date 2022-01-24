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
typedef  int /*<<< orphan*/  u32 ;
struct tcf_net {int /*<<< orphan*/  idr; } ;
struct tcf_block {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct tcf_block* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tcf_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcf_net_id ; 

__attribute__((used)) static struct tcf_block *FUNC2(struct net *net, u32 block_index)
{
	struct tcf_net *tn = FUNC1(net, tcf_net_id);

	return FUNC0(&tn->idr, block_index);
}