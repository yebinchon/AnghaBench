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
struct vm_area_struct {int dummy; } ;
struct to_kill {scalar_t__ size_shift; int /*<<< orphan*/  nd; struct task_struct* tsk; int /*<<< orphan*/  addr; } ;
struct task_struct {int /*<<< orphan*/  comm; } ;
struct page {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct page*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct to_kill*) ; 
 struct to_kill* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct task_struct *tsk, struct page *p,
		       struct vm_area_struct *vma,
		       struct list_head *to_kill,
		       struct to_kill **tkc)
{
	struct to_kill *tk;

	if (*tkc) {
		tk = *tkc;
		*tkc = NULL;
	} else {
		tk = FUNC6(sizeof(struct to_kill), GFP_ATOMIC);
		if (!tk) {
			FUNC10("Memory failure: Out of memory while machine check handling\n");
			return;
		}
	}
	tk->addr = FUNC8(p, vma);
	if (FUNC4(p))
		tk->size_shift = FUNC2(p, vma);
	else
		tk->size_shift = FUNC1(FUNC0(p)) + PAGE_SHIFT;

	/*
	 * Send SIGKILL if "tk->addr == -EFAULT". Also, as
	 * "tk->size_shift" is always non-zero for !is_zone_device_page(),
	 * so "tk->size_shift == 0" effectively checks no mapping on
	 * ZONE_DEVICE. Indeed, when a devdax page is mmapped N times
	 * to a process' address space, it's possible not all N VMAs
	 * contain mappings for the page, but at least one VMA does.
	 * Only deliver SIGBUS with payload derived from the VMA that
	 * has a mapping for the page.
	 */
	if (tk->addr == -EFAULT) {
		FUNC11("Memory failure: Unable to find user space address %lx in %s\n",
			FUNC9(p), tsk->comm);
	} else if (tk->size_shift == 0) {
		FUNC5(tk);
		return;
	}
	FUNC3(tsk);
	tk->tsk = tsk;
	FUNC7(&tk->nd, to_kill);
}