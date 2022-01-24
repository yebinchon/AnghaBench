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
struct kernfs_open_file {int dummy; } ;
struct hugetlb_cgroup {int /*<<< orphan*/ * hugepage; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  RES_LIMIT 128 
 int /*<<< orphan*/ * hstates ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct hugetlb_cgroup* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct hugetlb_cgroup*) ; 
 int /*<<< orphan*/  hugetlb_limit_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct kernfs_open_file*) ; 
 int /*<<< orphan*/  FUNC8 (struct kernfs_open_file*) ; 
 int FUNC9 (char*,char*,unsigned long*) ; 
 int FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC11 (unsigned long,int) ; 
 char* FUNC12 (char*) ; 

__attribute__((used)) static ssize_t FUNC13(struct kernfs_open_file *of,
				    char *buf, size_t nbytes, loff_t off)
{
	int ret, idx;
	unsigned long nr_pages;
	struct hugetlb_cgroup *h_cg = FUNC3(FUNC8(of));

	if (FUNC4(h_cg)) /* Can't set limit on root */
		return -EINVAL;

	buf = FUNC12(buf);
	ret = FUNC9(buf, "-1", &nr_pages);
	if (ret)
		return ret;

	idx = FUNC1(FUNC7(of)->private);
	nr_pages = FUNC11(nr_pages, 1 << FUNC2(&hstates[idx]));

	switch (FUNC0(FUNC7(of)->private)) {
	case RES_LIMIT:
		FUNC5(&hugetlb_limit_mutex);
		ret = FUNC10(&h_cg->hugepage[idx], nr_pages);
		FUNC6(&hugetlb_limit_mutex);
		break;
	default:
		ret = -EINVAL;
		break;
	}
	return ret ?: nbytes;
}