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
struct tcf_block {int /*<<< orphan*/  refcnt; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tcf_block* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct tcf_block *FUNC4(struct net *net, u32 block_index)
{
	struct tcf_block *block;

	FUNC0();
	block = FUNC3(net, block_index);
	if (block && !FUNC2(&block->refcnt))
		block = NULL;
	FUNC1();

	return block;
}