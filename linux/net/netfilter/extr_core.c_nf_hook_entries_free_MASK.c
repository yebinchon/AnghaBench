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
struct nf_hook_entries_rcu_head {int /*<<< orphan*/  head; struct nf_hook_entries* allocation; } ;
struct nf_hook_entries {unsigned int num_hook_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  __nf_hook_entries_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nf_hook_ops** FUNC1 (struct nf_hook_entries*) ; 

__attribute__((used)) static void FUNC2(struct nf_hook_entries *e)
{
	struct nf_hook_entries_rcu_head *head;
	struct nf_hook_ops **ops;
	unsigned int num;

	if (!e)
		return;

	num = e->num_hook_entries;
	ops = FUNC1(e);
	head = (void *)&ops[num];
	head->allocation = e;
	FUNC0(&head->head, __nf_hook_entries_free);
}