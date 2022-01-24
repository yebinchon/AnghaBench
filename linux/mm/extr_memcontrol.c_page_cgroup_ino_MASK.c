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
struct page {int /*<<< orphan*/  mem_cgroup; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  cgroup; } ;
struct mem_cgroup {TYPE_1__ css; } ;
typedef  unsigned long ino_t ;

/* Variables and functions */
 int CSS_ONLINE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct mem_cgroup* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 struct mem_cgroup* FUNC4 (struct page*) ; 
 struct mem_cgroup* FUNC5 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

ino_t FUNC8(struct page *page)
{
	struct mem_cgroup *memcg;
	unsigned long ino = 0;

	FUNC6();
	if (FUNC0(page) && !FUNC1(page))
		memcg = FUNC4(page);
	else
		memcg = FUNC2(page->mem_cgroup);
	while (memcg && !(memcg->css.flags & CSS_ONLINE))
		memcg = FUNC5(memcg);
	if (memcg)
		ino = FUNC3(memcg->css.cgroup);
	FUNC7();
	return ino;
}