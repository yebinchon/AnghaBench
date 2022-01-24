#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {int /*<<< orphan*/  cgroup; } ;
struct TYPE_4__ {int /*<<< orphan*/  failcnt; scalar_t__ max; } ;
struct mem_cgroup {TYPE_1__ css; TYPE_2__ kmem; TYPE_2__ memsw; TYPE_2__ swap; TYPE_2__ memory; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  memory_cgrp_subsys ; 
 char* FUNC3 (struct mem_cgroup*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

void FUNC8(struct mem_cgroup *memcg)
{
	char *buf;

	FUNC7("memory: usage %llukB, limit %llukB, failcnt %lu\n",
		FUNC0((u64)FUNC4(&memcg->memory)),
		FUNC0((u64)memcg->memory.max), memcg->memory.failcnt);
	if (FUNC1(memory_cgrp_subsys))
		FUNC7("swap: usage %llukB, limit %llukB, failcnt %lu\n",
			FUNC0((u64)FUNC4(&memcg->swap)),
			FUNC0((u64)memcg->swap.max), memcg->swap.failcnt);
	else {
		FUNC7("memory+swap: usage %llukB, limit %llukB, failcnt %lu\n",
			FUNC0((u64)FUNC4(&memcg->memsw)),
			FUNC0((u64)memcg->memsw.max), memcg->memsw.failcnt);
		FUNC7("kmem: usage %llukB, limit %llukB, failcnt %lu\n",
			FUNC0((u64)FUNC4(&memcg->kmem)),
			FUNC0((u64)memcg->kmem.max), memcg->kmem.failcnt);
	}

	FUNC7("Memory cgroup stats for ");
	FUNC6(memcg->css.cgroup);
	FUNC5(":");
	buf = FUNC3(memcg);
	if (!buf)
		return;
	FUNC7("%s", buf);
	FUNC2(buf);
}