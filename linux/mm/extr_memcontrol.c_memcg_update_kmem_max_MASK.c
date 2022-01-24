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
struct mem_cgroup {int /*<<< orphan*/  kmem; } ;

/* Variables and functions */
 int /*<<< orphan*/  memcg_max_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct mem_cgroup *memcg,
				 unsigned long max)
{
	int ret;

	FUNC0(&memcg_max_mutex);
	ret = FUNC2(&memcg->kmem, max);
	FUNC1(&memcg_max_mutex);
	return ret;
}