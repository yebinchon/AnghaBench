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
struct qlist_head {int dummy; } ;
struct kmem_cache {int dummy; } ;

/* Variables and functions */
 struct qlist_head QLIST_INIT ; 
 int /*<<< orphan*/  cpu_quarantine ; 
 int /*<<< orphan*/  FUNC0 (struct qlist_head*,struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlist_head*,struct qlist_head*,struct kmem_cache*) ; 
 struct qlist_head* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *arg)
{
	struct kmem_cache *cache = arg;
	struct qlist_head to_free = QLIST_INIT;
	struct qlist_head *q;

	q = FUNC2(&cpu_quarantine);
	FUNC1(q, &to_free, cache);
	FUNC0(&to_free, cache);
}