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
struct mem_cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mem_cgroup*,int) ; 
 scalar_t__ FUNC1 () ; 
 struct mem_cgroup* FUNC2 (struct mem_cgroup*) ; 

__attribute__((used)) static void FUNC3(struct mem_cgroup *memcg)
{
	while (memcg) {
		FUNC0(memcg, false);
		if (FUNC1())
			FUNC0(memcg, true);

		memcg = FUNC2(memcg);
	}
}