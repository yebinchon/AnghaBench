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
struct proc_dir_entry {int /*<<< orphan*/  pde_unload_lock; TYPE_1__* proc_fops; } ;
struct pde_opener {int closing; struct completion* c; int /*<<< orphan*/  lh; struct file* file; } ;
struct file {int dummy; } ;
struct completion {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release ) (int /*<<< orphan*/ ,struct file*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct completion) ; 
 struct completion c ; 
 int /*<<< orphan*/  FUNC1 (struct completion*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pde_opener*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pde_opener_cache ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct file*) ; 
 scalar_t__ FUNC8 (struct completion*) ; 
 int /*<<< orphan*/  FUNC9 (struct completion*) ; 

__attribute__((used)) static void FUNC10(struct proc_dir_entry *pde, struct pde_opener *pdeo)
{
	/*
	 * close() (proc_reg_release()) can't delete an entry and proceed:
	 * ->release hook needs to be available at the right moment.
	 *
	 * rmmod (remove_proc_entry() et al) can't delete an entry and proceed:
	 * "struct file" needs to be available at the right moment.
	 *
	 * Therefore, first process to enter this function does ->release() and
	 * signals its completion to the other process which does nothing.
	 */
	if (pdeo->closing) {
		/* somebody else is doing that, just wait */
		FUNC0(c);
		pdeo->c = &c;
		FUNC6(&pde->pde_unload_lock);
		FUNC9(&c);
	} else {
		struct file *file;
		struct completion *c;

		pdeo->closing = true;
		FUNC6(&pde->pde_unload_lock);
		file = pdeo->file;
		pde->proc_fops->release(FUNC2(file), file);
		FUNC5(&pde->pde_unload_lock);
		/* After ->release. */
		FUNC4(&pdeo->lh);
		c = pdeo->c;
		FUNC6(&pde->pde_unload_lock);
		if (FUNC8(c))
			FUNC1(c);
		FUNC3(pde_opener_cache, pdeo);
	}
}