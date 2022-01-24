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
struct nf_hook_ops {int dummy; } ;
struct net {int dummy; } ;
struct ebt_table {int /*<<< orphan*/  valid_hooks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,struct ebt_table*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,struct nf_hook_ops const*,int /*<<< orphan*/ ) ; 

void FUNC3(struct net *net, struct ebt_table *table,
			  const struct nf_hook_ops *ops)
{
	FUNC2(net, ops, FUNC1(table->valid_hooks));
	FUNC0(net, table);
}