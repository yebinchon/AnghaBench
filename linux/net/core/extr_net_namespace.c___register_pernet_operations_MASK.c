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
struct pernet_operations {int /*<<< orphan*/  list; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  init_net_initialized ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 int FUNC1 (struct pernet_operations*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct list_head *list,
					struct pernet_operations *ops)
{
	if (!init_net_initialized) {
		FUNC0(&ops->list, list);
		return 0;
	}

	return FUNC1(ops, &init_net);
}