#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct uncharge_gather {unsigned long nr_anon; unsigned long nr_file; unsigned long nr_kmem; unsigned long nr_huge; unsigned long nr_shmem; TYPE_2__* memcg; int /*<<< orphan*/  dummy_page; int /*<<< orphan*/  pgpgout; } ;
struct TYPE_8__ {int /*<<< orphan*/  css; TYPE_1__* vmstats_percpu; int /*<<< orphan*/  kmem; int /*<<< orphan*/  memsw; int /*<<< orphan*/  memory; } ;
struct TYPE_7__ {int /*<<< orphan*/  nr_page_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEMCG_CACHE ; 
 int /*<<< orphan*/  MEMCG_RSS ; 
 int /*<<< orphan*/  MEMCG_RSS_HUGE ; 
 int /*<<< orphan*/  NR_SHMEM ; 
 int /*<<< orphan*/  PGPGOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  memory_cgrp_subsys ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC12(const struct uncharge_gather *ug)
{
	unsigned long nr_pages = ug->nr_anon + ug->nr_file + ug->nr_kmem;
	unsigned long flags;

	if (!FUNC8(ug->memcg)) {
		FUNC11(&ug->memcg->memory, nr_pages);
		if (FUNC5())
			FUNC11(&ug->memcg->memsw, nr_pages);
		if (!FUNC3(memory_cgrp_subsys) && ug->nr_kmem)
			FUNC11(&ug->memcg->kmem, ug->nr_kmem);
		FUNC10(ug->memcg);
	}

	FUNC7(flags);
	FUNC1(ug->memcg, MEMCG_RSS, -ug->nr_anon);
	FUNC1(ug->memcg, MEMCG_CACHE, -ug->nr_file);
	FUNC1(ug->memcg, MEMCG_RSS_HUGE, -ug->nr_huge);
	FUNC1(ug->memcg, NR_SHMEM, -ug->nr_shmem);
	FUNC0(ug->memcg, PGPGOUT, ug->pgpgout);
	FUNC2(ug->memcg->vmstats_percpu->nr_page_events, nr_pages);
	FUNC9(ug->memcg, ug->dummy_page);
	FUNC6(flags);

	if (!FUNC8(ug->memcg))
		FUNC4(&ug->memcg->css, nr_pages);
}