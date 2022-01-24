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
struct user_namespace {int dummy; } ;
struct task_struct {int dummy; } ;
struct mm_struct {int flags; int def_flags; int /*<<< orphan*/  user_ns; int /*<<< orphan*/ * pmd_huge_pte; int /*<<< orphan*/  exe_file; int /*<<< orphan*/  arg_lock; int /*<<< orphan*/  page_table_lock; int /*<<< orphan*/  rss_stat; int /*<<< orphan*/  pinned_vm; scalar_t__ locked_vm; scalar_t__ map_count; int /*<<< orphan*/ * core_state; int /*<<< orphan*/  mmlist; int /*<<< orphan*/  mmap_sem; int /*<<< orphan*/  mm_count; int /*<<< orphan*/  mm_users; scalar_t__ vmacache_seqnum; int /*<<< orphan*/  mm_rb; int /*<<< orphan*/ * mmap; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int flags; int def_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MMF_INIT_MASK ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int VM_INIT_DEF_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* current ; 
 int default_dump_filter ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct user_namespace*) ; 
 scalar_t__ FUNC6 (struct task_struct*,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC14 (struct mm_struct*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC15 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC16 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC17 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mm_struct *FUNC19(struct mm_struct *mm, struct task_struct *p,
	struct user_namespace *user_ns)
{
	mm->mmap = NULL;
	mm->mm_rb = RB_ROOT;
	mm->vmacache_seqnum = 0;
	FUNC3(&mm->mm_users, 1);
	FUNC3(&mm->mm_count, 1);
	FUNC7(&mm->mmap_sem);
	FUNC0(&mm->mmlist);
	mm->core_state = NULL;
	FUNC16(mm);
	mm->map_count = 0;
	mm->locked_vm = 0;
	FUNC2(&mm->pinned_vm, 0);
	FUNC9(&mm->rss_stat, 0, sizeof(mm->rss_stat));
	FUNC18(&mm->page_table_lock);
	FUNC18(&mm->arg_lock);
	FUNC13(mm);
	FUNC12(mm);
	FUNC14(mm, p);
	FUNC1(mm->exe_file, NULL);
	FUNC17(mm);
	FUNC8(mm);
#if defined(CONFIG_TRANSPARENT_HUGEPAGE) && !USE_SPLIT_PMD_PTLOCKS
	mm->pmd_huge_pte = NULL;
#endif
	FUNC15(mm);

	if (current->mm) {
		mm->flags = current->mm->flags & MMF_INIT_MASK;
		mm->def_flags = current->mm->def_flags & VM_INIT_DEF_MASK;
	} else {
		mm->flags = default_dump_filter;
		mm->def_flags = 0;
	}

	if (FUNC10(mm))
		goto fail_nopgd;

	if (FUNC6(p, mm))
		goto fail_nocontext;

	mm->user_ns = FUNC5(user_ns);
	return mm;

fail_nocontext:
	FUNC11(mm);
fail_nopgd:
	FUNC4(mm);
	return NULL;
}