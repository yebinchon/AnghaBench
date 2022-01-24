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
struct pernet_operations {int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  exit_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ init_net ; 
 int /*<<< orphan*/  init_net_initialized ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  net_exit_list ; 
 int /*<<< orphan*/  FUNC3 (struct pernet_operations*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pernet_operations*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pernet_operations*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct pernet_operations *ops)
{
	if (!init_net_initialized) {
		FUNC2(&ops->list);
	} else {
		FUNC0(net_exit_list);
		FUNC1(&init_net.exit_list, &net_exit_list);
		FUNC5(ops, &net_exit_list);
		FUNC6();
		FUNC3(ops, &net_exit_list);
		FUNC4(ops, &net_exit_list);
	}
}