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
struct page {struct mem_cgroup* mem_cgroup; } ;
struct mem_cgroup {int /*<<< orphan*/  css; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct mem_cgroup* root_mem_cgroup ; 

struct mem_cgroup *FUNC4(struct page *page)
{
	struct mem_cgroup *memcg = page->mem_cgroup;

	if (FUNC1())
		return NULL;

	FUNC2();
	if (!memcg || !FUNC0(&memcg->css))
		memcg = root_mem_cgroup;
	FUNC3();
	return memcg;
}