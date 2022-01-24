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
struct page_counter {int /*<<< orphan*/  failcnt; } ;
struct mem_cgroup {struct page_counter tcpmem; struct page_counter kmem; struct page_counter memsw; struct page_counter memory; } ;
struct kernfs_open_file {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  RES_FAILCNT 133 
#define  RES_MAX_USAGE 132 
#define  _KMEM 131 
#define  _MEM 130 
#define  _MEMSWAP 129 
#define  _TCP 128 
 struct mem_cgroup* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct kernfs_open_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct kernfs_open_file*) ; 
 int /*<<< orphan*/  FUNC6 (struct page_counter*) ; 

__attribute__((used)) static ssize_t FUNC7(struct kernfs_open_file *of, char *buf,
				size_t nbytes, loff_t off)
{
	struct mem_cgroup *memcg = FUNC3(FUNC5(of));
	struct page_counter *counter;

	switch (FUNC2(FUNC4(of)->private)) {
	case _MEM:
		counter = &memcg->memory;
		break;
	case _MEMSWAP:
		counter = &memcg->memsw;
		break;
	case _KMEM:
		counter = &memcg->kmem;
		break;
	case _TCP:
		counter = &memcg->tcpmem;
		break;
	default:
		FUNC0();
	}

	switch (FUNC1(FUNC4(of)->private)) {
	case RES_MAX_USAGE:
		FUNC6(counter);
		break;
	case RES_FAILCNT:
		counter->failcnt = 0;
		break;
	default:
		FUNC0();
	}

	return nbytes;
}