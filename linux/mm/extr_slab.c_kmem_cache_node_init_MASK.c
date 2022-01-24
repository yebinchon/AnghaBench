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
struct kmem_cache_node {scalar_t__ free_touched; scalar_t__ free_objects; int /*<<< orphan*/  list_lock; scalar_t__ colour_next; int /*<<< orphan*/ * alien; int /*<<< orphan*/ * shared; scalar_t__ free_slabs; scalar_t__ total_slabs; int /*<<< orphan*/  slabs_free; int /*<<< orphan*/  slabs_partial; int /*<<< orphan*/  slabs_full; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct kmem_cache_node *parent)
{
	FUNC0(&parent->slabs_full);
	FUNC0(&parent->slabs_partial);
	FUNC0(&parent->slabs_free);
	parent->total_slabs = 0;
	parent->free_slabs = 0;
	parent->shared = NULL;
	parent->alien = NULL;
	parent->colour_next = 0;
	FUNC1(&parent->list_lock);
	parent->free_objects = 0;
	parent->free_touched = 0;
}