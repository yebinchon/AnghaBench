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
struct vm_struct {int nr_pages; struct page** pages; } ;
struct task_struct {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CONFIG_VMAP_STACK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEMCG_KERNEL_STACK_KB ; 
 int /*<<< orphan*/  NR_KERNEL_STACK_KB ; 
 int PAGE_SIZE ; 
 int THREAD_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 void* FUNC6 (struct task_struct*) ; 
 struct vm_struct* FUNC7 (struct task_struct*) ; 
 struct page* FUNC8 (void*) ; 

__attribute__((used)) static void FUNC9(struct task_struct *tsk, int account)
{
	void *stack = FUNC6(tsk);
	struct vm_struct *vm = FUNC7(tsk);

	FUNC1(FUNC2(CONFIG_VMAP_STACK) && PAGE_SIZE % 1024 != 0);

	if (vm) {
		int i;

		FUNC0(vm->nr_pages != THREAD_SIZE / PAGE_SIZE);

		for (i = 0; i < THREAD_SIZE / PAGE_SIZE; i++) {
			FUNC4(FUNC5(vm->pages[i]),
					    NR_KERNEL_STACK_KB,
					    PAGE_SIZE / 1024 * account);
		}
	} else {
		/*
		 * All stack pages are in the same zone and belong to the
		 * same memcg.
		 */
		struct page *first_page = FUNC8(stack);

		FUNC4(FUNC5(first_page), NR_KERNEL_STACK_KB,
				    THREAD_SIZE / 1024 * account);

		FUNC3(first_page, MEMCG_KERNEL_STACK_KB,
				     account * (THREAD_SIZE / 1024));
	}
}