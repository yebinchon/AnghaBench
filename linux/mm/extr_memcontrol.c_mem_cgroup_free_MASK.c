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
 int /*<<< orphan*/  FUNC0 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_cgroup*) ; 

__attribute__((used)) static void FUNC4(struct mem_cgroup *memcg)
{
	FUNC3(memcg);
	/*
	 * Flush percpu vmstats and vmevents to guarantee the value correctness
	 * on parent's and all ancestor levels.
	 */
	FUNC2(memcg, false);
	FUNC1(memcg);
	FUNC0(memcg);
}