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
struct qlist_node {int dummy; } ;
struct kmem_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SLAB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _THIS_IP_ ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 void* FUNC4 (struct qlist_node*,struct kmem_cache*) ; 

__attribute__((used)) static void FUNC5(struct qlist_node *qlink, struct kmem_cache *cache)
{
	void *object = FUNC4(qlink, cache);
	unsigned long flags;

	if (FUNC0(CONFIG_SLAB))
		FUNC3(flags);

	FUNC1(cache, object, _THIS_IP_);

	if (FUNC0(CONFIG_SLAB))
		FUNC2(flags);
}