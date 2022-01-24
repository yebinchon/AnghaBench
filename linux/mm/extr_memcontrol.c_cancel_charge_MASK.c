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
struct mem_cgroup {int /*<<< orphan*/  css; int /*<<< orphan*/  memsw; int /*<<< orphan*/  memory; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct mem_cgroup *memcg, unsigned int nr_pages)
{
	if (FUNC2(memcg))
		return;

	FUNC3(&memcg->memory, nr_pages);
	if (FUNC1())
		FUNC3(&memcg->memsw, nr_pages);

	FUNC0(&memcg->css, nr_pages);
}