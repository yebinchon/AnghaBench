#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct mem_cgroup {int /*<<< orphan*/  css; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_5__ {scalar_t__ mem_cgroup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct page*) ; 
 TYPE_3__* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ do_swap_account ; 
 struct mem_cgroup* FUNC6 (struct mm_struct*) ; 
 int FUNC7 (struct page*) ; 
 unsigned short FUNC8 (TYPE_1__) ; 
 scalar_t__ FUNC9 () ; 
 struct mem_cgroup* FUNC10 (unsigned short) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (struct mem_cgroup*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC15(struct page *page, struct mm_struct *mm,
			  gfp_t gfp_mask, struct mem_cgroup **memcgp,
			  bool compound)
{
	struct mem_cgroup *memcg = NULL;
	unsigned int nr_pages = compound ? FUNC7(page) : 1;
	int ret = 0;

	if (FUNC9())
		goto out;

	if (FUNC1(page)) {
		/*
		 * Every swap fault against a single page tries to charge the
		 * page, bail as early as possible.  shmem_unuse() encounters
		 * already charged pages, too.  The USED bit is protected by
		 * the page lock, which serializes swap cache removal, which
		 * in turn serializes uncharging.
		 */
		FUNC2(!FUNC0(page), page);
		if (FUNC3(page)->mem_cgroup)
			goto out;

		if (do_swap_account) {
			swp_entry_t ent = { .val = FUNC11(page), };
			unsigned short id = FUNC8(ent);

			FUNC12();
			memcg = FUNC10(id);
			if (memcg && !FUNC5(&memcg->css))
				memcg = NULL;
			FUNC13();
		}
	}

	if (!memcg)
		memcg = FUNC6(mm);

	ret = FUNC14(memcg, gfp_mask, nr_pages);

	FUNC4(&memcg->css);
out:
	*memcgp = memcg;
	return ret;
}