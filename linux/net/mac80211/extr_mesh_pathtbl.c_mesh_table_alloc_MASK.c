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
struct mesh_table {int /*<<< orphan*/  walk_lock; int /*<<< orphan*/  gates_lock; int /*<<< orphan*/  entries; int /*<<< orphan*/  walk_head; int /*<<< orphan*/  known_gates; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mesh_table* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mesh_table *FUNC4(void)
{
	struct mesh_table *newtbl;

	newtbl = FUNC2(sizeof(struct mesh_table), GFP_ATOMIC);
	if (!newtbl)
		return NULL;

	FUNC0(&newtbl->known_gates);
	FUNC0(&newtbl->walk_head);
	FUNC1(&newtbl->entries,  0);
	FUNC3(&newtbl->gates_lock);
	FUNC3(&newtbl->walk_lock);

	return newtbl;
}