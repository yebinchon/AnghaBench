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
struct kmem_cache {int dummy; } ;
struct detached_freelist {int /*<<< orphan*/  cnt; int /*<<< orphan*/  tail; int /*<<< orphan*/  freelist; int /*<<< orphan*/  page; int /*<<< orphan*/  s; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 size_t FUNC1 (struct kmem_cache*,size_t,void**,struct detached_freelist*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct kmem_cache *s, size_t size, void **p)
{
	if (FUNC0(!size))
		return;

	do {
		struct detached_freelist df;

		size = FUNC1(s, size, p, &df);
		if (!df.page)
			continue;

		FUNC3(df.s, df.page, df.freelist, df.tail, df.cnt,_RET_IP_);
	} while (FUNC2(size));
}