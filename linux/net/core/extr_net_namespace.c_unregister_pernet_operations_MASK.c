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
struct pernet_operations {int /*<<< orphan*/ * id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pernet_operations*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  net_generic_ids ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct pernet_operations *ops)
{
	FUNC0(ops);
	FUNC2();
	if (ops->id)
		FUNC1(&net_generic_ids, *ops->id);
}