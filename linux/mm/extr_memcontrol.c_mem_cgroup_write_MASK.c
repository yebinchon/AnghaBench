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
struct mem_cgroup {unsigned long soft_limit; } ;
struct kernfs_open_file {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  RES_LIMIT 133 
#define  RES_SOFT_LIMIT 132 
#define  _KMEM 131 
#define  _MEM 130 
#define  _MEMSWAP 129 
#define  _TCP 128 
 struct mem_cgroup* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_cgroup*) ; 
 int FUNC4 (struct mem_cgroup*,unsigned long,int) ; 
 int FUNC5 (struct mem_cgroup*,unsigned long) ; 
 int FUNC6 (struct mem_cgroup*,unsigned long) ; 
 TYPE_1__* FUNC7 (struct kernfs_open_file*) ; 
 int /*<<< orphan*/  FUNC8 (struct kernfs_open_file*) ; 
 int FUNC9 (char*,char*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*) ; 

__attribute__((used)) static ssize_t FUNC12(struct kernfs_open_file *of,
				char *buf, size_t nbytes, loff_t off)
{
	struct mem_cgroup *memcg = FUNC2(FUNC8(of));
	unsigned long nr_pages;
	int ret;

	buf = FUNC11(buf);
	ret = FUNC9(buf, "-1", &nr_pages);
	if (ret)
		return ret;

	switch (FUNC0(FUNC7(of)->private)) {
	case RES_LIMIT:
		if (FUNC3(memcg)) { /* Can't set limit on root */
			ret = -EINVAL;
			break;
		}
		switch (FUNC1(FUNC7(of)->private)) {
		case _MEM:
			ret = FUNC4(memcg, nr_pages, false);
			break;
		case _MEMSWAP:
			ret = FUNC4(memcg, nr_pages, true);
			break;
		case _KMEM:
			FUNC10("kmem.limit_in_bytes is deprecated and will be removed. "
				     "Please report your usecase to linux-mm@kvack.org if you "
				     "depend on this functionality.\n");
			ret = FUNC5(memcg, nr_pages);
			break;
		case _TCP:
			ret = FUNC6(memcg, nr_pages);
			break;
		}
		break;
	case RES_SOFT_LIMIT:
		memcg->soft_limit = nr_pages;
		ret = 0;
		break;
	}
	return ret ?: nbytes;
}